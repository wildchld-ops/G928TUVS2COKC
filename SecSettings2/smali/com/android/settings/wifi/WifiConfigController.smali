.class public Lcom/android/settings/wifi/WifiConfigController;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiConfigController$WifiEapIdTextWatcher;,
        Lcom/android/settings/wifi/WifiConfigController$IpAddressTextWatcher;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final WAPI_PSK_TYPE_VALUES:[I

.field private static mCanceltoForget:Z

.field private static mForgetCheck:Z

.field private static mSaved:Z

.field private static mVzwNegativeButton:I

.field private static mVzwNeutralButton:I

.field private static mVzwPositiveButton:I


# instance fields
.field private PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private WIFI_VZW_CANCEL:I

.field private WIFI_VZW_CONNECT:I

.field private WIFI_VZW_EDIT:I

.field private WIFI_VZW_FORGET:I

.field private WIFI_VZW_NONE:I

.field private WIFI_VZW_SAVE:I

.field private bIsChangedSecurity:Z

.field private bIsChangedSsid:Z

.field certListFromCCM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private eToast:Landroid/widget/Toast;

.field focusListener:Landroid/view/View$OnFocusChangeListener;

.field private hpToast:Landroid/widget/Toast;

.field private isRequestHideKeyboard:Z

.field private mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private mAccessPointSecurity:I

.field private mAdvancedOptionsLayout:Landroid/widget/LinearLayout;

.field private mAutoGenFirstTime:Z

.field private mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

.field private mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

.field private mContext:Landroid/content/Context;

.field private mDns1View:Landroid/widget/EditText;

.field private mDns2View:Landroid/widget/EditText;

.field private mEapAnonymousView:Landroid/widget/EditText;

.field private mEapCaCertSpinner:Landroid/widget/Spinner;

.field private mEapIdentityView:Landroid/widget/EditText;

.field private mEapMethod:Ljava/lang/String;

.field private mEapMethodSpinner:Landroid/widget/Spinner;

.field private mEapUserCertSpinner:Landroid/widget/Spinner;

.field private mEdit:Z

.field private mGatewayView:Landroid/widget/EditText;

.field private mHttpProxy:Landroid/net/ProxyInfo;

.field private mInXlSetupWizard:Z

.field private mInitIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

.field private mIpAddressView:Landroid/widget/EditText;

.field private mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

.field private mIpSettingsSpinner:Landroid/widget/Spinner;

.field private mIsCheckedCckm:Z

.field private mIsCheckedFt:Z

.field private mIsOwnerUser:Z

.field private mLevels:[Ljava/lang/String;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNetworkPrefixLengthView:Landroid/widget/TextView;

.field public mPasswordView:Landroid/widget/EditText;

.field private mPhase1Spinner:Landroid/widget/Spinner;

.field private mPhase2Adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhase2Spinner:Landroid/widget/Spinner;

.field private mProxyAuthId:Landroid/widget/TextView;

.field private mProxyAuthPassword:Landroid/widget/TextView;

.field private mProxyAuthenticationLayout:Landroid/widget/LinearLayout;

.field private mProxyExclusionListView:Landroid/widget/TextView;

.field private mProxyHostView:Landroid/widget/TextView;

.field private mProxyPacView:Landroid/widget/TextView;

.field private mProxyPortView:Landroid/widget/TextView;

.field private mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

.field private mProxySettingsSpinner:Landroid/widget/Spinner;

.field private mRetry:Z

.field private mSNSEnabled:Z

.field private mSNSSetupChanged:Z

.field private mSecuritySpinner:Landroid/widget/Spinner;

.field private mShowDoneButton:Z

.field private mShowPasswordLayout:Landroid/widget/LinearLayout;

.field private mSimNum:I

.field private mSsidView:Landroid/widget/EditText;

.field private mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

.field mTempSsid:Ljava/lang/String;

.field private mTextViewChangedHandler:Landroid/os/Handler;

.field private mView:Landroid/view/View;

.field private mWapiAsCert:Landroid/widget/Spinner;

.field private mWapiCertIndex:I

.field private mWapiPskType:Landroid/widget/Spinner;

.field private mWapiUserCert:Landroid/widget/Spinner;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private pToast:Landroid/widget/Toast;

.field passwordWatcher:Landroid/text/TextWatcher;

.field private sToast:Landroid/widget/Toast;

.field simOperator:Ljava/lang/String;

.field simslot2only:Ljava/lang/String;

.field simstate:Ljava/lang/String;

.field ssidWatcher:Landroid/text/TextWatcher;

.field private unspecifiedCert:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    sput v3, Lcom/android/settings/wifi/WifiConfigController;->mVzwPositiveButton:I

    sput v3, Lcom/android/settings/wifi/WifiConfigController;->mVzwNeutralButton:I

    sput v3, Lcom/android/settings/wifi/WifiConfigController;->mVzwNegativeButton:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/wifi/WifiConfigController;->WAPI_PSK_TYPE_VALUES:[I

    sput-boolean v1, Lcom/android/settings/wifi/WifiConfigController;->mForgetCheck:Z

    sput-boolean v1, Lcom/android/settings/wifi/WifiConfigController;->mCanceltoForget:Z

    sput-boolean v1, Lcom/android/settings/wifi/WifiConfigController;->mSaved:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public constructor <init>(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;ZZ)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_NONE:I

    iput v2, p0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_CANCEL:I

    iput v1, p0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_EDIT:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_FORGET:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_SAVE:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_CONNECT:I

    const-string v0, "unspecified"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAutoGenFirstTime:Z

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedFt:Z

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedCckm:Z

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsOwnerUser:Z

    iput v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mSimNum:I

    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->simOperator:Ljava/lang/String;

    const-string v0, "ril.ICC_TYPE"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->simstate:Ljava/lang/String;

    const-string v0, "ril.MSIMM"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->simslot2only:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mTempSsid:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiConfigController;->bIsChangedSsid:Z

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiConfigController;->bIsChangedSecurity:Z

    iput-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mShowDoneButton:Z

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mSNSSetupChanged:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mSNSEnabled:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EapMethodSetting"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethod:Ljava/lang/String;

    new-instance v0, Lcom/android/settings/wifi/WifiConfigController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiConfigController$1;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->focusListener:Landroid/view/View$OnFocusChangeListener;

    new-instance v0, Lcom/android/settings/wifi/WifiConfigController$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiConfigController$2;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->ssidWatcher:Landroid/text/TextWatcher;

    new-instance v0, Lcom/android/settings/wifi/WifiConfigController$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiConfigController$3;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->passwordWatcher:Landroid/text/TextWatcher;

    sput-boolean v2, Lcom/android/settings/wifi/WifiConfigController;->mSaved:Z

    sput-boolean v2, Lcom/android/settings/wifi/WifiConfigController;->mCanceltoForget:Z

    invoke-direct/range {p0 .. p5}, Lcom/android/settings/wifi/WifiConfigController;->initController(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;ZZ)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;ZZLandroid/net/LinkProperties;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_NONE:I

    iput v5, p0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_CANCEL:I

    iput v1, p0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_EDIT:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_FORGET:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_SAVE:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_CONNECT:I

    const-string v0, "unspecified"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAutoGenFirstTime:Z

    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedFt:Z

    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedCckm:Z

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsOwnerUser:Z

    iput v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mSimNum:I

    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->simOperator:Ljava/lang/String;

    const-string v0, "ril.ICC_TYPE"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->simstate:Ljava/lang/String;

    const-string v0, "ril.MSIMM"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->simslot2only:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mTempSsid:Ljava/lang/String;

    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->bIsChangedSsid:Z

    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->bIsChangedSecurity:Z

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mShowDoneButton:Z

    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mSNSSetupChanged:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mSNSEnabled:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EapMethodSetting"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethod:Ljava/lang/String;

    new-instance v0, Lcom/android/settings/wifi/WifiConfigController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiConfigController$1;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->focusListener:Landroid/view/View$OnFocusChangeListener;

    new-instance v0, Lcom/android/settings/wifi/WifiConfigController$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiConfigController$2;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->ssidWatcher:Landroid/text/TextWatcher;

    new-instance v0, Lcom/android/settings/wifi/WifiConfigController$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiConfigController$3;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->passwordWatcher:Landroid/text/TextWatcher;

    sput-boolean v5, Lcom/android/settings/wifi/WifiConfigController;->mCanceltoForget:Z

    iput-object p6, p0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/WifiConfigController;->initController(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;ZZ)V

    return-void

    :cond_0
    move v0, v5

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;ZZZ)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_NONE:I

    iput v5, p0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_CANCEL:I

    iput v1, p0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_EDIT:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_FORGET:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_SAVE:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_CONNECT:I

    const-string v0, "unspecified"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAutoGenFirstTime:Z

    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedFt:Z

    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedCckm:Z

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsOwnerUser:Z

    iput v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mSimNum:I

    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->simOperator:Ljava/lang/String;

    const-string v0, "ril.ICC_TYPE"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->simstate:Ljava/lang/String;

    const-string v0, "ril.MSIMM"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->simslot2only:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mTempSsid:Ljava/lang/String;

    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->bIsChangedSsid:Z

    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->bIsChangedSecurity:Z

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mShowDoneButton:Z

    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mSNSSetupChanged:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mSNSEnabled:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EapMethodSetting"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethod:Ljava/lang/String;

    new-instance v0, Lcom/android/settings/wifi/WifiConfigController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiConfigController$1;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->focusListener:Landroid/view/View$OnFocusChangeListener;

    new-instance v0, Lcom/android/settings/wifi/WifiConfigController$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiConfigController$2;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->ssidWatcher:Landroid/text/TextWatcher;

    new-instance v0, Lcom/android/settings/wifi/WifiConfigController$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiConfigController$3;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->passwordWatcher:Landroid/text/TextWatcher;

    sput-boolean p6, Lcom/android/settings/wifi/WifiConfigController;->mSaved:Z

    sput-boolean v5, Lcom/android/settings/wifi/WifiConfigController;->mCanceltoForget:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/WifiConfigController;->initController(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;ZZ)V

    return-void

    :cond_0
    move v0, v5

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->sToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/WifiConfigController;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->sToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiConfigController;)Lcom/android/settings/wifi/WifiConfigUiBase;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiConfigController;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->pToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/wifi/WifiConfigController;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->pToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->hpToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings/wifi/WifiConfigController;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->hpToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiConfigController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mTextViewChangedHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WifiConfigController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->restartFocusedViewInput()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->eToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/settings/wifi/WifiConfigController;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->eToast:Landroid/widget/Toast;

    return-object p1
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/android/settings/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040235

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100087

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f100239

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private checkIp4vAddress(Landroid/net/LinkProperties;)Z
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_1

    :cond_0
    :goto_1
    return v2

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private generateBlankFields(Ljava/net/Inet4Address;)V
    .locals 7

    const-string v4, "WifiConfigController"

    const-string v5, "generateBlankFields"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v5}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a0424

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x18

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :try_start_0
    invoke-static {p1, v3}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x1

    aput-byte v5, v0, v4

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v5}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a041e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void

    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-ltz v3, :cond_4

    const/16 v4, 0x20

    if-le v3, v4, :cond_0

    :cond_4
    const/16 v3, 0x18

    goto :goto_0

    :catch_0
    move-exception v1

    const/16 v3, 0x18

    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_1

    :catch_2
    move-exception v4

    goto :goto_1
.end method

.method private getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;
    .locals 2

    :try_start_0
    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    check-cast v1, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private getIpv4AddressStr(Landroid/net/LinkProperties;I)Ljava/lang/String;
    .locals 9

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_3

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2c

    if-ne v7, v8, :cond_0

    add-int/lit8 v6, v3, 0x2

    move v3, v6

    :cond_0
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2f

    if-ne v7, v8, :cond_2

    if-eqz v6, :cond_2

    move v0, v3

    const/4 v7, 0x1

    if-ne p2, v7, :cond_1

    invoke-virtual {v4, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object v2, v1

    :goto_2
    return-object v2

    :cond_1
    add-int/lit8 v7, v3, 0x1

    add-int/lit8 v8, v5, -0x1

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move-object v2, v1

    goto :goto_2
.end method

.method private getSignalString()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const-string v1, "WifiConfigController"

    const-string v2, "Force level of wifi signal"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    :cond_0
    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    aget-object v1, v1, v0

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getSpinnerItemPosition(Landroid/widget/Spinner;Ljava/lang/String;)I
    .locals 3

    const/4 v1, -0x1

    if-nez p1, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/widget/Spinner;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private initController(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;ZZ)V
    .locals 37

    const-string v32, "ro.csc.sales_code"

    invoke-static/range {v32 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mInXlSetupWizard:Z

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez p3, :cond_7

    const/16 v32, 0x0

    :goto_0
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    move/from16 v0, p5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mRetry:Z

    new-instance v32, Landroid/os/Handler;

    invoke-direct/range {v32 .. v32}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mTextViewChangedHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const/4 v8, 0x0

    const v32, 0x7f0e003a

    move-object/from16 v0, v25

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    const-string v33, "wifi"

    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v32, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const v34, 0x7f04025c

    const v35, 0x7f0e004b

    move-object/from16 v0, v25

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v32 .. v35}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    move-object/from16 v32, v0

    const v33, 0x1090009

    invoke-virtual/range {v32 .. v33}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    new-instance v32, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const v34, 0x7f04025c

    const v35, 0x7f0e004c

    move-object/from16 v0, v25

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v32 .. v35}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    move-object/from16 v32, v0

    const v33, 0x1090009

    invoke-virtual/range {v32 .. v33}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    const v33, 0x7f0a03a7

    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    const v32, 0x7f090034

    move-object/from16 v0, v25

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f10050e

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/Spinner;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v32, v0

    const v33, 0x7f0e004d

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->focusListener:Landroid/view/View$OnFocusChangeListener;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/Spinner;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f100507

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/Spinner;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v32, v0

    const v33, 0x7f0e004e

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->focusListener:Landroid/view/View$OnFocusChangeListener;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/Spinner;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mShowDoneButton:Z

    const-string v32, "VZW"

    sget-object v33, Lcom/android/settings/Utils;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f1004bb

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/Spinner;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    new-instance v4, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    const v33, 0x7f04025c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x7f0e0025

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, v34

    invoke-direct {v4, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v32, 0x1090009

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v32, v0

    if-nez v32, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v32, v0

    const v33, 0x7f0a0352

    invoke-interface/range {v32 .. v33}, Lcom/android/settings/wifi/WifiConfigUiBase;->setTitle(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f1004b8

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/EditText;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/EditText;->requestFocus()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v32, v0

    const/16 v33, 0x6

    invoke-virtual/range {v32 .. v33}, Landroid/widget/EditText;->setImeOptions(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->ssidWatcher:Landroid/text/TextWatcher;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f1004bb

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/Spinner;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->focusListener:Landroid/view/View$OnFocusChangeListener;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/Spinner;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v4, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    const v33, 0x7f04025c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x7f0e0025

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, v34

    invoke-direct {v4, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v32, 0x1090009

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mInXlSetupWizard:Z

    move/from16 v32, v0

    if-eqz v32, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f1004f6

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f1004fc

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setVisibility(I)V

    new-instance v5, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    const v33, 0x7f040258

    const v34, 0x1020014

    const v35, 0x7f0e0029

    move-object/from16 v0, v25

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v32

    move/from16 v1, v33

    move/from16 v2, v34

    move-object/from16 v3, v35

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showIpConfigFields()V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showProxyFields()V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showKeyMgmtFields()V

    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mSNSEnabled:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f100525

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    const/16 v33, 0x8

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f100527

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/LinearLayout;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mAdvancedOptionsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAdvancedOptionsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAdvancedOptionsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAdvancedOptionsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->focusListener:Landroid/view/View$OnFocusChangeListener;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f10052c

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/LinearLayout;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthenticationLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthenticationLayout:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v32, "VZW"

    sget-object v33, Lcom/android/settings/Utils;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v32, v0

    const v33, 0x7f0a03f3

    move-object/from16 v0, v25

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-interface/range {v32 .. v33}, Lcom/android/settings/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_SAVE:I

    move/from16 v32, v0

    sput v32, Lcom/android/settings/wifi/WifiConfigController;->mVzwNeutralButton:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_CONNECT:I

    move/from16 v32, v0

    sput v32, Lcom/android/settings/wifi/WifiConfigController;->mVzwPositiveButton:I

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v32, v0

    const v33, 0x7f0a03ed

    move-object/from16 v0, v25

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-interface/range {v32 .. v33}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_2
    const-string v32, "VZW"

    sget-object v33, Lcom/android/settings/Utils;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v32, v0

    if-eqz v32, :cond_47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v32, v0

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_47

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    move/from16 v32, v0

    if-nez v32, :cond_47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v32

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v32

    sget-object v33, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_3

    const/16 v32, 0x1

    move/from16 v0, v32

    if-ne v8, v0, :cond_45

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v32, v0

    const v33, 0x7f0a04ed

    move-object/from16 v0, v25

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-interface/range {v32 .. v33}, Lcom/android/settings/wifi/WifiConfigUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mIsOwnerUser:Z

    move/from16 v32, v0

    if-eqz v32, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v32, v0

    const v33, 0x7f0a03f0

    move-object/from16 v0, v25

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-interface/range {v32 .. v33}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_FORGET:I

    move/from16 v32, v0

    sput v32, Lcom/android/settings/wifi/WifiConfigController;->mVzwPositiveButton:I

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_CANCEL:I

    move/from16 v32, v0

    sput v32, Lcom/android/settings/wifi/WifiConfigController;->mVzwNegativeButton:I

    if-nez v8, :cond_44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v32, v0

    const v33, 0x7f0a0372

    move-object/from16 v0, v25

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-interface/range {v32 .. v33}, Lcom/android/settings/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_EDIT:I

    move/from16 v32, v0

    sput v32, Lcom/android/settings/wifi/WifiConfigController;->mVzwNeutralButton:I

    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/android/settings/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v32

    if-eqz v32, :cond_6

    sget-boolean v32, Lcom/android/settings/wifi/WifiConfigController;->mCanceltoForget:Z

    if-nez v32, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    :cond_6
    const/16 v32, 0x0

    sput-boolean v32, Lcom/android/settings/wifi/WifiConfigController;->mForgetCheck:Z

    return-void

    :cond_7
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    move/from16 v32, v0

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f10028d

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-interface/range {v32 .. v33}, Lcom/android/settings/wifi/WifiConfigUiBase;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f1004b7

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v30

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->getSignalString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v18, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/settings/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f100082

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    sget-object v32, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    if-eq v0, v1, :cond_a

    sget-object v32, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    if-eq v0, v1, :cond_a

    sget-object v32, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    if-eq v0, v1, :cond_a

    sget-object v32, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_28

    :cond_a
    const/4 v8, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    move/from16 v32, v0

    if-eqz v32, :cond_29

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mRetry:Z

    move/from16 v32, v0

    if-nez v32, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    move/from16 v32, v0

    if-nez v32, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v32, v0

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_29

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f100529

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/view/ViewGroup;

    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    move/from16 v32, v0

    if-nez v32, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mRetry:Z

    move/from16 v32, v0

    if-nez v32, :cond_e

    sget-boolean v32, Lcom/android/settings/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-eqz v32, :cond_c

    sget-boolean v32, Lcom/android/settings/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-eqz v32, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v32, v0

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_d

    :cond_c
    if-eqz v28, :cond_d

    if-eqz v19, :cond_d

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v32

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_d

    const v32, 0x7f0a038f

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x28

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "Mbps"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x29

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v32

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_d
    const v32, 0x7f0a038e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Lcom/android/settings/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v32

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_e
    sget-object v32, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v32, v0

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    if-eqz v10, :cond_10

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->HS20OperatorName:Ljava/lang/String;

    move-object/from16 v32, v0

    if-eqz v32, :cond_f

    const v32, 0x7f0a02e3

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->HS20OperatorName:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v32

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_f
    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->HS20VenueName:Ljava/lang/String;

    move-object/from16 v32, v0

    if-eqz v32, :cond_10

    const v32, 0x7f0a02e4

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->HS20VenueName:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v32

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_10
    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v32, v0

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v32

    sget-object v33, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Landroid/widget/Spinner;->setSelection(I)V

    const/16 v27, 0x1

    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v31

    if-eqz v31, :cond_11

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    move-object/from16 v32, v0

    if-eqz v32, :cond_11

    const v32, 0x7f0a0393

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v15, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_11
    :goto_6
    sget-boolean v32, Lcom/android/settings/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-eqz v32, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    move/from16 v32, v0

    if-nez v32, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v12

    if-eqz v12, :cond_15

    sget-object v32, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_15

    iget v0, v12, Landroid/net/DhcpInfo;->netmask:I

    move/from16 v32, v0

    if-eqz v32, :cond_12

    const v32, 0x7f0a125f

    iget v0, v12, Landroid/net/DhcpInfo;->netmask:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v15, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_12
    iget v0, v12, Landroid/net/DhcpInfo;->gateway:I

    move/from16 v32, v0

    if-eqz v32, :cond_13

    const v32, 0x7f0a0421

    iget v0, v12, Landroid/net/DhcpInfo;->gateway:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v15, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_13
    iget v0, v12, Landroid/net/DhcpInfo;->dns1:I

    move/from16 v32, v0

    if-eqz v32, :cond_14

    const v32, 0x7f0a041d

    iget v0, v12, Landroid/net/DhcpInfo;->dns1:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v15, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_14
    iget v0, v12, Landroid/net/DhcpInfo;->dns2:I

    move/from16 v32, v0

    if-eqz v32, :cond_15

    const v32, 0x7f0a041f

    iget v0, v12, Landroid/net/DhcpInfo;->dns2:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v15, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_15
    if-eqz v19, :cond_16

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_16

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v32

    if-lez v32, :cond_16

    const v32, 0x7f0a1260

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v15, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_16
    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v32

    sget-object v33, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Landroid/widget/Spinner;->setSelection(I)V

    const/16 v27, 0x1

    :cond_17
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v32, v0

    if-eqz v32, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_2d

    sget-object v32, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    :goto_8
    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    const-string v32, "VZW"

    sget-object v33, Lcom/android/settings/Utils;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    move/from16 v32, v0

    if-eqz v32, :cond_19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mRetry:Z

    move/from16 v32, v0

    if-nez v32, :cond_19

    const/16 v32, -0x1

    move/from16 v0, v22

    move/from16 v1, v32

    if-eq v0, v1, :cond_18

    sget-object v32, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_2e

    :cond_18
    const/16 v32, 0x8

    move/from16 v0, v32

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_19
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/android/settings/wifi/AccessPoint;->mIsSharedAp:Z

    move/from16 v32, v0

    if-eqz v32, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->mExpiration:Ljava/lang/String;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->mExpiration:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v34

    add-int/lit8 v34, v34, -0x1

    invoke-virtual/range {v32 .. v34}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    const-wide/16 v32, 0x0

    cmp-long v32, v16, v32

    if-nez v32, :cond_2f

    const v32, 0x7f0a04df

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const v34, 0x7f0a04e1

    invoke-virtual/range {v33 .. v34}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v32

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    sget-boolean v32, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v32, :cond_1a

    const-string v32, "WifiConfigController"

    const-string v33, "Shared network\nAccess Unlimited"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f100525

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    const/16 v33, 0x8

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v32, v0

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    move/from16 v32, v0

    if-nez v32, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mRetry:Z

    move/from16 v32, v0

    if-eqz v32, :cond_1c

    :cond_1b
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showSecurityFields()V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showIpConfigFields()V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showProxyFields()V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showKeyMgmtFields()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f100527

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/LinearLayout;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mAdvancedOptionsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAdvancedOptionsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAdvancedOptionsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f10052c

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/LinearLayout;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthenticationLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthenticationLayout:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v27, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f100528

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/CheckBox;

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f100529

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setVisibility(I)V

    :cond_1c
    const-string v32, "TGY"

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v32, v0

    if-eqz v32, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v32, v0

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v32, v0

    if-eqz v32, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v32, v0

    const-string v33, "SIM"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->getSpinnerItemPosition(Landroid/widget/Spinner;Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_1d
    const-string v32, "SIM"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v33

    const-string v34, "CscFeature_Wifi_DefaultEapMethod"

    invoke-virtual/range {v33 .. v34}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_1f

    const-string v32, "SFR WiFi Mobile"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_1f

    sget-boolean v32, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v32, :cond_1e

    const-string v32, "WifiConfigController"

    const-string v33, "--Found access point SFR WiFi Mobile"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v32, v0

    if-eqz v32, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v32, v0

    const-string v33, "SIM"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->getSpinnerItemPosition(Landroid/widget/Spinner;Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_1f
    const-string v32, "AKA"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v33

    const-string v34, "CscFeature_Wifi_DefaultEapMethod"

    invoke-virtual/range {v33 .. v34}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_21

    const-string v32, "Orange Mobile Wi-Fi"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_21

    sget-boolean v32, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v32, :cond_20

    const-string v32, "WifiConfigController"

    const-string v33, "--Found access point Orange Mobile"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v32, v0

    if-eqz v32, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v32, v0

    const-string v33, "AKA"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->getSpinnerItemPosition(Landroid/widget/Spinner;Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_21
    const-string v32, "AKA"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v33

    const-string v34, "CscFeature_Wifi_DefaultEapMethod"

    invoke-virtual/range {v33 .. v34}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_23

    const-string v32, "VerizonWiFiAccess"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_23

    sget-boolean v32, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v32, :cond_22

    const-string v32, "WifiConfigController"

    const-string v33, "--Found access point VerizonWiFiAccess"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v32, v0

    if-eqz v32, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v32, v0

    const-string v33, "AKA"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->getSpinnerItemPosition(Landroid/widget/Spinner;Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_23
    const/4 v7, 0x0

    const-string v32, "security.mdpp"

    const-string v33, "None"

    invoke-static/range {v32 .. v33}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v32, "WifiConfigController"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "mdpp"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v32, "Enabled"

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_24

    const-string v32, "Enforcing"

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_26

    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v32

    if-eqz v32, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v32

    move-object/from16 v0, v32

    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v14, :cond_26

    invoke-virtual {v14}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v13

    const/16 v32, 0x7

    move/from16 v0, v32

    if-eq v13, v0, :cond_25

    const/16 v32, 0x8

    move/from16 v0, v32

    if-ne v13, v0, :cond_26

    :cond_25
    const/4 v7, 0x1

    :cond_26
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    move/from16 v32, v0

    if-eqz v32, :cond_32

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mRetry:Z

    move/from16 v32, v0

    if-nez v32, :cond_32

    const-string v32, "VZW"

    sget-object v33, Lcom/android/settings/Utils;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    move/from16 v32, v0

    if-nez v32, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f1004f9

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    const/16 v33, 0x8

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v32, v0

    if-eqz v32, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v32, v0

    const/16 v33, 0x6

    invoke-virtual/range {v32 .. v33}, Landroid/widget/EditText;->setImeOptions(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/EditText;->requestFocus()Z

    const/16 v32, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    :cond_27
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f10028d

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f1004b8

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/EditText;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->ssidWatcher:Landroid/text/TextWatcher;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Landroid/text/Editable;->length()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Landroid/widget/EditText;->setSelection(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f1004bb

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/Spinner;->setSelection(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f1004bb

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/Spinner;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Landroid/widget/EditText;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Landroid/widget/Spinner;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v32, v0

    const v33, 0x7f0a03f3

    move-object/from16 v0, v25

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-interface/range {v32 .. v33}, Lcom/android/settings/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v32, v0

    const v33, 0x7f0a03ed

    move-object/from16 v0, v25

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-interface/range {v32 .. v33}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_SAVE:I

    move/from16 v32, v0

    sput v32, Lcom/android/settings/wifi/WifiConfigController;->mVzwNeutralButton:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_CONNECT:I

    move/from16 v32, v0

    sput v32, Lcom/android/settings/wifi/WifiConfigController;->mVzwPositiveButton:I

    goto/16 :goto_2

    :cond_28
    const/4 v8, 0x0

    goto/16 :goto_4

    :cond_29
    move-object/from16 v18, v15

    goto/16 :goto_5

    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/Spinner;->setSelection(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v12

    if-eqz v12, :cond_11

    sget-object v32, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_11

    iget v0, v12, Landroid/net/DhcpInfo;->ipAddress:I

    move/from16 v32, v0

    if-eqz v32, :cond_11

    const v32, 0x7f0a0393

    iget v0, v12, Landroid/net/DhcpInfo;->ipAddress:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v15, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto/16 :goto_6

    :cond_2b
    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v32

    sget-object v33, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v32, v0

    const/16 v33, 0x2

    invoke-virtual/range {v32 .. v33}, Landroid/widget/Spinner;->setSelection(I)V

    const/16 v27, 0x1

    goto/16 :goto_7

    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_7

    :cond_2d
    sget-object v32, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    goto/16 :goto_8

    :cond_2e
    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_9

    :cond_2f
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v33

    new-instance v34, Ljava/util/Date;

    move-object/from16 v0, v34

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v33 .. v34}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v33

    new-instance v34, Ljava/util/Date;

    move-object/from16 v0, v34

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v33 .. v34}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const v32, 0x7f0a04df

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const v34, 0x7f0a04e2

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aput-object v11, v35, v36

    invoke-virtual/range {v33 .. v35}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v32

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    sget-boolean v32, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v32, :cond_1a

    const-string v32, "WifiConfigController"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Shared network\nExpires on "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v32, v0

    if-eqz v32, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v32, v0

    const/16 v33, 0x5

    invoke-virtual/range {v32 .. v33}, Landroid/widget/EditText;->setImeOptions(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/EditText;->requestFocus()Z

    const/16 v32, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    goto/16 :goto_b

    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v32, v0

    const v33, 0x7f0a03f3

    move-object/from16 v0, v25

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-interface/range {v32 .. v33}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v32

    sget-object v33, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->setPasswordInvisible()V

    goto/16 :goto_2

    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v30

    if-nez v30, :cond_33

    if-nez v28, :cond_34

    :cond_33
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mRetry:Z

    move/from16 v32, v0

    if-eqz v32, :cond_3b

    :cond_34
    sget-boolean v32, Lcom/android/settings/wifi/WifiConfigController;->mSaved:Z

    if-nez v32, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v32, v0

    const v33, 0x7f0a03ed

    move-object/from16 v0, v25

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-interface/range {v32 .. v33}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    const-string v32, "VZW"

    sget-object v33, Lcom/android/settings/Utils;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_CONNECT:I

    move/from16 v32, v0

    sput v32, Lcom/android/settings/wifi/WifiConfigController;->mVzwPositiveButton:I

    :cond_35
    const/16 v32, 0x1

    sput-boolean v32, Lcom/android/settings/wifi/WifiConfigController;->mForgetCheck:Z

    sget-boolean v32, Lcom/android/settings/wifi/WifiConfigController;->mCanceltoForget:Z

    if-eqz v32, :cond_36

    const/16 v32, 0x0

    sput-boolean v32, Lcom/android/settings/wifi/WifiConfigController;->mCanceltoForget:Z

    :cond_36
    const-string v32, "VZW"

    sget-object v33, Lcom/android/settings/Utils;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v32, v0

    if-eqz v32, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    move/from16 v32, v0

    if-nez v32, :cond_38

    const/16 v32, 0x8

    move/from16 v0, v32

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz v20, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v32, v0

    if-eqz v32, :cond_37

    const v32, 0x7f0a04f1

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v35, v0

    aput-object v35, v33, v34

    move-object/from16 v0, v25

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_37
    const/16 v32, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_38
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v32, v0

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_2

    const-string v32, "VZW"

    sget-object v33, Lcom/android/settings/Utils;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_41

    sget-object v32, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    if-eq v0, v1, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v32

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_40

    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v32, v0

    const v33, 0x7f0a0372

    move-object/from16 v0, v25

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-interface/range {v32 .. v33}, Lcom/android/settings/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mIsOwnerUser:Z

    move/from16 v32, v0

    if-eqz v32, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v32, v0

    const v33, 0x7f0a03f0

    move-object/from16 v0, v25

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-interface/range {v32 .. v33}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_FORGET:I

    move/from16 v32, v0

    sput v32, Lcom/android/settings/wifi/WifiConfigController;->mVzwPositiveButton:I

    :cond_3a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_EDIT:I

    move/from16 v32, v0

    sput v32, Lcom/android/settings/wifi/WifiConfigController;->mVzwNeutralButton:I

    goto/16 :goto_2

    :cond_3b
    sget-object v32, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    if-eq v0, v1, :cond_3e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mRetry:Z

    move/from16 v32, v0

    if-eqz v32, :cond_3e

    const-string v32, "VZW"

    sget-object v33, Lcom/android/settings/Utils;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_3d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mIsOwnerUser:Z

    move/from16 v32, v0

    if-eqz v32, :cond_3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v32, v0

    const v33, 0x7f0a03f0

    move-object/from16 v0, v25

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-interface/range {v32 .. v33}, Lcom/android/settings/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_FORGET:I

    move/from16 v32, v0

    sput v32, Lcom/android/settings/wifi/WifiConfigController;->mVzwNeutralButton:I

    :cond_3c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_CONNECT:I

    move/from16 v32, v0

    sput v32, Lcom/android/settings/wifi/WifiConfigController;->mVzwPositiveButton:I

    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v32, v0

    const v33, 0x7f0a03ed

    move-object/from16 v0, v25

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-interface/range {v32 .. v33}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    :cond_3e
    const-string v32, "DCM"

    sget-object v33, Lcom/android/settings/Utils;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_3f

    sget-object v32, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_3f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v32, v0

    const v33, 0x7f0a0364

    move-object/from16 v0, v25

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-interface/range {v32 .. v33}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f10050d

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    const/16 v33, 0x8

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_c

    :cond_40
    if-eqz v8, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mIsOwnerUser:Z

    move/from16 v32, v0

    if-eqz v32, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v32, v0

    const v33, 0x7f0a03f0

    move-object/from16 v0, v25

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-interface/range {v32 .. v33}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_FORGET:I

    move/from16 v32, v0

    sput v32, Lcom/android/settings/wifi/WifiConfigController;->mVzwPositiveButton:I

    goto/16 :goto_2

    :cond_41
    const/16 v21, 0x0

    sget-boolean v32, Lcom/android/settings/Utils;->REMOVABLE_DEFAULT_AP:Z

    if-nez v32, :cond_42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/settings/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v21

    :cond_42
    const-string v32, "DCM"

    sget-object v33, Lcom/android/settings/Utils;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v32, v0

    const v33, 0x7f0a03ed

    move-object/from16 v0, v25

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-interface/range {v32 .. v33}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v32

    if-eqz v32, :cond_2

    if-nez v21, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mIsOwnerUser:Z

    move/from16 v32, v0

    if-eqz v32, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v32, v0

    const v33, 0x7f0a03f0

    move-object/from16 v0, v25

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-interface/range {v32 .. v33}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v32, v0

    const-string v33, ""

    invoke-interface/range {v32 .. v33}, Lcom/android/settings/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_NONE:I

    move/from16 v32, v0

    sput v32, Lcom/android/settings/wifi/WifiConfigController;->mVzwNeutralButton:I

    goto/16 :goto_3

    :cond_45
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mIsOwnerUser:Z

    move/from16 v32, v0

    if-eqz v32, :cond_46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v32, v0

    const v33, 0x7f0a03f0

    move-object/from16 v0, v25

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-interface/range {v32 .. v33}, Lcom/android/settings/wifi/WifiConfigUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_FORGET:I

    move/from16 v32, v0

    sput v32, Lcom/android/settings/wifi/WifiConfigController;->mVzwNegativeButton:I

    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v32, v0

    const v33, 0x7f0a0372

    move-object/from16 v0, v25

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-interface/range {v32 .. v33}, Lcom/android/settings/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v32, v0

    const v33, 0x7f0a03ed

    move-object/from16 v0, v25

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-interface/range {v32 .. v33}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_EDIT:I

    move/from16 v32, v0

    sput v32, Lcom/android/settings/wifi/WifiConfigController;->mVzwNeutralButton:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_CONNECT:I

    move/from16 v32, v0

    sput v32, Lcom/android/settings/wifi/WifiConfigController;->mVzwPositiveButton:I

    goto/16 :goto_3

    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v32, v0

    const v33, 0x7f0a04ed

    move-object/from16 v0, v25

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-interface/range {v32 .. v33}, Lcom/android/settings/wifi/WifiConfigUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_CANCEL:I

    move/from16 v32, v0

    sput v32, Lcom/android/settings/wifi/WifiConfigController;->mVzwNegativeButton:I

    goto/16 :goto_3

    :cond_48
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    move/from16 v32, v0

    if-nez v32, :cond_49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v32, v0

    if-eqz v32, :cond_4a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v32

    if-nez v32, :cond_4a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v32

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_4a

    :cond_49
    sget-boolean v32, Lcom/android/settings/wifi/WifiConfigController;->mSaved:Z

    if-nez v32, :cond_4a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v32, v0

    const v33, 0x7f0a04ed

    move-object/from16 v0, v25

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-interface/range {v32 .. v33}, Lcom/android/settings/wifi/WifiConfigUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v32, v0

    if-eqz v32, :cond_4d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v32

    sget-object v33, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_4d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v32, v0

    const v33, 0x7f0a04ed

    move-object/from16 v0, v25

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-interface/range {v32 .. v33}, Lcom/android/settings/wifi/WifiConfigUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    sget-boolean v32, Lcom/android/settings/Utils;->ENABLE_DISC_BUTTON_APNLIST:Z

    if-eqz v32, :cond_4b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v32, v0

    const v33, 0x7f0a0364

    move-object/from16 v0, v25

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-interface/range {v32 .. v33}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v32, v0

    const v33, 0x7f0a03f1

    move-object/from16 v0, v25

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-interface/range {v32 .. v33}, Lcom/android/settings/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    const/16 v32, 0x0

    sput-boolean v32, Lcom/android/settings/wifi/WifiConfigController;->mCanceltoForget:Z

    :cond_4b
    sget-boolean v32, Lcom/android/settings/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-eqz v32, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v32, v0

    const v33, 0x7f0a1195

    move-object/from16 v0, v25

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-interface/range {v32 .. v33}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mIsOwnerUser:Z

    move/from16 v32, v0

    if-eqz v32, :cond_4c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v32, v0

    const v33, 0x7f0a03f0

    move-object/from16 v0, v25

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-interface/range {v32 .. v33}, Lcom/android/settings/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    :cond_4c
    const/16 v32, 0x0

    sput-boolean v32, Lcom/android/settings/wifi/WifiConfigController;->mCanceltoForget:Z

    goto/16 :goto_3

    :cond_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v32, v0

    const v33, 0x7f0a04ed

    move-object/from16 v0, v25

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-interface/range {v32 .. v33}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f100525

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    const/16 v33, 0x8

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setVisibility(I)V

    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mShowDoneButton:Z

    goto/16 :goto_3
.end method

.method private ipAndProxyFieldsAreValid()Z
    .locals 15

    const/4 v13, 0x1

    const/4 v12, 0x0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v13, :cond_0

    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    :goto_0
    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v14, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v0, v14, :cond_1

    new-instance v0, Landroid/net/StaticIpConfiguration;

    invoke-direct {v0}, Landroid/net/StaticIpConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigController;->validateIpConfigFields(Landroid/net/StaticIpConfiguration;)I

    move-result v8

    if-eqz v8, :cond_1

    move v0, v12

    :goto_1
    return v0

    :cond_0
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v9

    :cond_2
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    if-ne v9, v13, :cond_9

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_3
    const/4 v2, 0x0

    const/4 v8, 0x0

    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v7, v5}, Lcom/android/settings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    :goto_2
    if-nez v8, :cond_8

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v14, 0x7f10052d

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthId:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthPassword:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthPassword:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v0, v12

    goto/16 :goto_1

    :catch_0
    move-exception v6

    const v8, 0x7f0a0122

    goto :goto_2

    :cond_5
    new-instance v0, Landroid/net/ProxyInfo;

    invoke-direct/range {v0 .. v5}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    :cond_6
    :goto_3
    move v0, v13

    goto/16 :goto_1

    :cond_7
    new-instance v0, Landroid/net/ProxyInfo;

    invoke-direct {v0, v1, v2, v5}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    goto :goto_3

    :cond_8
    move v0, v12

    goto/16 :goto_1

    :cond_9
    const/4 v0, 0x2

    if-ne v9, v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v12

    goto/16 :goto_1

    :cond_a
    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    if-nez v10, :cond_b

    move v0, v12

    goto/16 :goto_1

    :cond_b
    new-instance v0, Landroid/net/ProxyInfo;

    invoke-direct {v0, v10}, Landroid/net/ProxyInfo;-><init>(Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    goto :goto_3
.end method

.method private loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v17

    const/16 v18, 0x3f2

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->saw(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    array-length v0, v9

    move/from16 v17, v0

    if-nez v17, :cond_3

    :cond_0
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v9, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v9, v17

    :goto_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v17, "WifiConfigController"

    const-string v18, "****Trying to Load certificates from CCM*****"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v17, "USRPKEY_"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    :try_start_0
    const-string v17, "knox_ccm_policy"

    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sec/enterprise/knox/ccm/IClientCertificateManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;->getCCMVersion()Ljava/lang/String;

    move-result-object v8

    :goto_1
    const-string v17, "3.0"

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    const-string v17, "WifiConfigController"

    const-string v18, "Fetching WiFi aliases from CCM"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;->getAliasesForWiFi()Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    :cond_1
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->certListFromCCM:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->certListFromCCM:Ljava/util/List;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " [KNOX]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v11

    const-string v17, "WifiConfigController"

    const-string v18, "Failed at ClientCertificateManager API getAliasesForWiFi-Exception "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_3
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    new-instance v3, Landroid/widget/ArrayAdapter;

    const v17, 0x7f04025c

    move/from16 v0, v17

    invoke-direct {v3, v10, v0, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v17, 0x1090009

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void

    :cond_3
    const-string v17, "USRPKEY_"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v17

    const-string v18, "USRCERT_"

    const/16 v19, 0x3f2

    invoke-virtual/range {v17 .. v19}, Landroid/security/KeyStore;->saw(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_6

    const/4 v13, 0x0

    :goto_4
    array-length v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v13, v0, :cond_6

    const/16 v16, 0x0

    :goto_5
    array-length v0, v15

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_5

    aget-object v17, v9, v13

    aget-object v18, v15, v16

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    aget-object v17, v9, v13

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    :cond_7
    array-length v0, v9

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    new-array v4, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v4, v17

    const/16 v17, 0x0

    const/16 v18, 0x1

    array-length v0, v9

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v9, v0, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v9, v4

    goto/16 :goto_0

    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_9
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->certListFromCCM:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method private restartFocusedViewInput()V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    goto :goto_0

    :cond_4
    if-nez v0, :cond_5

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigController;->restartViewInput(Landroid/view/View;)V

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    goto/16 :goto_0
.end method

.method private restartViewInput(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    :cond_0
    return-void
.end method

.method private setAdapterToSpinner(Landroid/widget/Spinner;I)V
    .locals 4

    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v2, 0x7f04025c

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method private setAnonymousIdentInvisible()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f10051e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setCaCertInvisible()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f10051b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method private setIdentityInvisible()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f10051d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setPasswordInvisible()V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f1004fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f100521

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setPhase2Invisible()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f10051a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method private setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 3

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private setUserCertInvisible()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f10051c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method private setVisibility(II)V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showEapFieldsByMethod(I)V
    .locals 9

    const v8, 0x7f10051e

    const v7, 0x7f100518

    const/16 v6, 0x8

    const v5, 0x7f10051a

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f100517

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f10051d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f10051b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f1004fb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f100521

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    sget-boolean v2, Lcom/android/settings/Utils;->ENABLE_SIM_SELECTION_UI:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/4 v2, 0x5

    if-ne p1, v2, :cond_9

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showSimCheckFields()V

    :cond_2
    :goto_1
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setPhase2Invisible()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setCaCertInvisible()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setUserCertInvisible()V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f10051c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setPhase2Invisible()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setPasswordInvisible()V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setUserCertInvisible()V

    sget-boolean v2, Lcom/android/settings/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_0

    const-string v2, "CMCC"

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v3, v3, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setCaCertInvisible()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setPhase2Invisible()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setUserCertInvisible()V

    goto/16 :goto_0

    :pswitch_4
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_5
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_6
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_7
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setPhase2Invisible()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setCaCertInvisible()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setUserCertInvisible()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setIdentityInvisible()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setPasswordInvisible()V

    goto/16 :goto_0

    :pswitch_5
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_8
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setUserCertInvisible()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f100537

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f100537

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method private showIpConfigFields()V
    .locals 25

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f10050d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v15

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f10050f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f100510

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    new-instance v3, Lcom/android/settings/wifi/WifiConfigController$IpAddressTextWatcher;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/settings/wifi/WifiConfigController$IpAddressTextWatcher;-><init>(Lcom/android/settings/wifi/WifiConfigController;Landroid/widget/EditText;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f100511

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    new-instance v3, Lcom/android/settings/wifi/WifiConfigController$IpAddressTextWatcher;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/settings/wifi/WifiConfigController$IpAddressTextWatcher;-><init>(Lcom/android/settings/wifi/WifiConfigController;Landroid/widget/EditText;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f100512

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setImeOptions(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f100513

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    new-instance v3, Lcom/android/settings/wifi/WifiConfigController$IpAddressTextWatcher;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/settings/wifi/WifiConfigController$IpAddressTextWatcher;-><init>(Lcom/android/settings/wifi/WifiConfigController;Landroid/widget/EditText;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f100514

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    new-instance v3, Lcom/android/settings/wifi/WifiConfigController$IpAddressTextWatcher;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/settings/wifi/WifiConfigController$IpAddressTextWatcher;-><init>(Lcom/android/settings/wifi/WifiConfigController;Landroid/widget/EditText;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    if-eqz v15, :cond_6

    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v3, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v1, v3, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    if-eqz v1, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/net/LinkAddress;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->checkIp4vAddress(Landroid/net/LinkProperties;)Z

    move-result v1

    if-eqz v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual/range {v22 .. v22}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual/range {v22 .. v22}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSelection(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/net/RouteInfo;

    invoke-virtual/range {v23 .. v23}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual/range {v23 .. v23}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    const/16 v16, 0x0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/net/InetAddress;

    invoke-virtual/range {v16 .. v16}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v1

    if-eqz v1, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/net/InetAddress;

    invoke-virtual/range {v16 .. v16}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v1

    if-eqz v1, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_c

    const-string v1, "content://com.sec.knox.provider2/WifiPolicy"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v3, v3, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "isEnterpriseNetwork"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v8, 0x0

    const-string v9, "getAllowUserPolicyChanges"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v2

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    if-eqz v18, :cond_a

    if-eqz v14, :cond_a

    :try_start_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "isEnterpriseNetwork"

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "getAllowUserPolicyChanges"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "false"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_a
    if-eqz v18, :cond_b

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_b
    if-eqz v14, :cond_c

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_c
    return-void

    :cond_d
    const/4 v12, 0x1

    const/4 v13, 0x2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v12}, Lcom/android/settings/wifi/WifiConfigController;->getIpv4AddressStr(Landroid/net/LinkProperties;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13}, Lcom/android/settings/wifi/WifiConfigController;->getIpv4AddressStr(Landroid/net/LinkProperties;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual/range {v16 .. v16}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    invoke-virtual/range {v16 .. v16}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_10
    if-eqz v24, :cond_6

    move-object/from16 v0, v24

    iget-object v1, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v1, :cond_11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    move-object/from16 v0, v24

    iget-object v3, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v3}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    move-object/from16 v0, v24

    iget-object v3, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v3}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_11
    move-object/from16 v0, v24

    iget-object v1, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-eqz v1, :cond_12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    move-object/from16 v0, v24

    iget-object v3, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_12
    move-object/from16 v0, v24

    iget-object v1, v0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    const/16 v16, 0x0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/net/InetAddress;

    invoke-virtual/range {v16 .. v16}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v1

    if-eqz v1, :cond_14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_13
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/net/InetAddress;

    invoke-virtual/range {v16 .. v16}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v1

    if-eqz v1, :cond_15

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual/range {v16 .. v16}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_15
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    invoke-virtual/range {v16 .. v16}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_16
    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-nez v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    if-nez v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    if-nez v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-nez v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-nez v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-nez v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    if-eqz v1, :cond_17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "input_method"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v20, :cond_17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_17
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    if-eqz v1, :cond_18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "input_method"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v20, :cond_18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_18
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    if-eqz v1, :cond_19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "input_method"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v20, :cond_19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_19
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    if-eqz v1, :cond_1a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "input_method"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v20, :cond_1a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    if-eqz v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "input_method"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v20, :cond_1b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f10050f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :catchall_0
    move-exception v1

    throw v1
.end method

.method private showKeyMgmtFields()V
    .locals 8

    const v7, 0x7f100531

    const v6, 0x7f100532

    const/16 v5, 0x8

    const v4, 0x7f100534

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    const-string v0, "WifiConfigController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accessPoint.keyMgmts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedFt:Z

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f100533

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedFt:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f100533

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :cond_7
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedFt:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedCckm:Z

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f100535

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedCckm:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f100535

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_9
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private showProxyFields()V
    .locals 19

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f100505

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v13

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_9

    const v1, 0x7f100508

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    const v1, 0x7f100509

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    const v1, 0x7f10052a

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->updateShowProxyAuthenticationOptions()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f10050a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setImeOptions(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f10050b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setImeOptions(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f10050c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthId:Landroid/widget/TextView;

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f10052f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthId:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthId:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f100530

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthPassword:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthPassword:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    if-eqz v13, :cond_2

    invoke-virtual {v13}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v17

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual/range {v17 .. v17}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual/range {v17 .. v17}, Landroid/net/ProxyInfo;->getPort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual/range {v17 .. v17}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {v17 .. v17}, Landroid/net/ProxyInfo;->getUsername()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v17}, Landroid/net/ProxyInfo;->getPassword()Ljava/lang/String;

    move-result-object v15

    if-eqz v18, :cond_2

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthId:Landroid/widget/TextView;

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthPassword:Landroid/widget/TextView;

    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f10052d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f10052e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_8

    const-string v1, "content://com.sec.knox.provider2/WifiPolicy"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v3, v3, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "isEnterpriseNetwork"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v8, 0x0

    const-string v9, "getAllowUserPolicyChanges"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v2

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v14, :cond_6

    if-eqz v12, :cond_6

    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "isEnterpriseNetwork"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "getAllowUserPolicyChanges"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "false"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setEnabled(Z)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    if-eqz v14, :cond_7

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_7
    if-eqz v12, :cond_8

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_8
    return-void

    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_c

    const v1, 0x7f100508

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    const v1, 0x7f100509

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    const v1, 0x7f10052a

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    const v1, 0x7f10052e

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f10052d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    if-nez v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f10052b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_a
    if-eqz v13, :cond_b

    invoke-virtual {v13}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v16

    if-eqz v16, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual/range {v16 .. v16}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setImeOptions(I)V

    goto/16 :goto_0

    :cond_c
    const v1, 0x7f100508

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    const v1, 0x7f100509

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    const v1, 0x7f10052a

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    const v1, 0x7f10052e

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    throw v1
.end method

.method private showSecurityFields()V
    .locals 31

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f090034

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v29

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mInXlSetupWizard:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    invoke-virtual {v2, v4, v5}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->initSecurityFields(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "VZW"

    sget-object v4, Lcom/android/settings/Utils;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1004f9

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1004f9

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f100471

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_4

    const-string v2, "VZW"

    sget-object v4, Lcom/android/settings/Utils;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1004c0

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/CheckBox;

    if-eqz v24, :cond_5

    const-string v2, "content://com.sec.knox.provider2/WifiPolicy"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "getPasswordHidden"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    if-eqz v16, :cond_5

    :try_start_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "getPasswordHidden"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/16 v2, 0x8

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f100471

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->passwordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f100521

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mShowPasswordLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mShowPasswordLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const v4, 0x7f0a03a6

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setHint(I)V

    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x3

    if-eq v2, v4, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1004fe

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1004fb

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f100521

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1004f9

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v22

    if-eqz v22, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_8
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x5

    if-ne v2, v4, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    goto/16 :goto_1

    :cond_b
    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v2

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1004fe

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    const/4 v15, 0x0

    const-string v2, "security.mdpp"

    const-string v4, "None"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v2, "Enabled"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "Enforcing"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_d
    const/4 v15, 0x1

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-nez v2, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1004ff

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move/from16 v0, v29

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    sget-boolean v2, Lcom/android/settings/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-eqz v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    const-string v4, "CMCC"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string v2, "PEAP"

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "SIM"

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    :goto_3
    new-instance v13, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f04025c

    move-object/from16 v0, v23

    invoke-direct {v13, v2, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v2, 0x1090009

    invoke-virtual {v13, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v13}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f100519

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase1Spinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase1Spinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move/from16 v0, v29

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase1Spinner:Landroid/widget/Spinner;

    const v4, 0x7f0e004a

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/settings/wifi/WifiConfigController;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f100500

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move/from16 v0, v29

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const v4, 0x7f0e004c

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/settings/wifi/WifiConfigController;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f100501

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move/from16 v0, v29

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f100502

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move/from16 v0, v29

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f100503

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f100504

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    new-instance v4, Lcom/android/settings/wifi/WifiConfigController$WifiEapIdTextWatcher;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/android/settings/wifi/WifiConfigController$WifiEapIdTextWatcher;-><init>(Lcom/android/settings/wifi/WifiConfigController;Landroid/widget/EditText;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    new-instance v4, Lcom/android/settings/wifi/WifiConfigController$WifiEapIdTextWatcher;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/android/settings/wifi/WifiConfigController$WifiEapIdTextWatcher;-><init>(Lcom/android/settings/wifi/WifiConfigController;Landroid/widget/EditText;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const-string v4, "CACERT_"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/settings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const-string v4, "USRPKEY_"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/settings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v0, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v18

    move/from16 v17, v18

    sget-boolean v2, Lcom/android/settings/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    const-string v4, "CMCC"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v2, 0x4

    move/from16 v0, v17

    if-ne v0, v2, :cond_11

    const/16 v17, 0x1

    :cond_11
    :goto_4
    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase1Method()Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase1Spinner:Landroid/widget/Spinner;

    const-string v4, "fast_provisioning="

    const-string v5, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    :cond_12
    sparse-switch v18, :sswitch_data_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    move/from16 v0, v27

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_13
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    const-string v2, "content://com.sec.knox.provider2/WifiPolicy"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v4, v4, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "isEnterpriseNetwork"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v9, 0x0

    const-string v10, "getAllowUserPolicyChanges"

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v3

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    if-eqz v20, :cond_18

    if-eqz v14, :cond_18

    :try_start_2
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "isEnterpriseNetwork"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const-string v2, "getAllowUserPolicyChanges"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "false"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const-string v2, "WifiPolicy"

    const-string v4, "Enterprise Wifi settings not editable"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase1Spinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase1Spinner:Landroid/widget/Spinner;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setEnabled(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_18
    if-eqz v20, :cond_19

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_19
    if-eqz v14, :cond_0

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_1a
    const-string v2, "PEAP"

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "TLS"

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "TTLS"

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "PWD"

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "SIM"

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "AKA"

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "AKA\'"

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v15, :cond_1b

    const-string v2, "FAST"

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    if-nez v15, :cond_f

    const-string v2, "LEAP"

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_1c
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v2

    sget-object v4, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    array-length v4, v4

    if-eq v2, v4, :cond_1e

    if-eqz v15, :cond_1d

    const/4 v2, 0x7

    move/from16 v0, v18

    if-le v0, v2, :cond_1d

    add-int/lit8 v17, v17, -0x1

    :cond_1d
    if-eqz v15, :cond_11

    const/16 v2, 0x8

    move/from16 v0, v18

    if-le v0, v2, :cond_11

    add-int/lit8 v17, v17, -0x1

    goto/16 :goto_4

    :cond_1e
    const/4 v2, 0x6

    move/from16 v0, v18

    if-ne v0, v2, :cond_1f

    add-int/lit8 v17, v17, -0x2

    goto/16 :goto_4

    :cond_1f
    const/4 v2, 0x5

    move/from16 v0, v18

    if-le v0, v2, :cond_11

    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_4

    :sswitch_0
    packed-switch v27, :pswitch_data_0

    :pswitch_0
    const-string v2, "WifiConfigController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid phase 2 method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_5

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_5

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_5

    :cond_20
    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethod:Ljava/lang/String;

    const-string v4, "SIM"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethod:Ljava/lang/String;

    const-string v4, "SingTel"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethod:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v4, v4, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_21

    const/16 v21, 0x4

    :cond_21
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase1Spinner:Landroid/widget/Spinner;

    const-string v4, "1"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_6

    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethod:Ljava/lang/String;

    const-string v4, "AKA"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethod:Ljava/lang/String;

    const-string v4, "LGU"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethod:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v4, v4, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_21

    const/16 v21, 0x5

    goto :goto_7

    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v30

    const-string v2, "PEAP"

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_6

    :cond_24
    const-string v2, "TLS"

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_6

    :cond_25
    const-string v2, "TTLS"

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_6

    :cond_26
    const-string v2, "PWD"

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_6

    :cond_27
    const-string v2, "SIM"

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_6

    :cond_28
    const-string v2, "AKA"

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 v2, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_6

    :cond_29
    const-string v2, "AKA\'"

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/4 v2, 0x6

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_6

    :cond_2a
    const-string v2, "FAST"

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/4 v2, 0x7

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_6

    :cond_2b
    const-string v2, "LEAP"

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_6

    :catchall_1
    move-exception v2

    throw v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showSimCheckFields()V
    .locals 14

    const/4 v13, 0x2

    const v12, 0x7f100538

    const v11, 0x7f100539

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v0, v13, [Ljava/lang/String;

    const-string v6, "0"

    aput-object v6, v0, v7

    const-string v6, "0"

    aput-object v6, v0, v8

    new-array v1, v13, [Ljava/lang/String;

    const-string v6, "0"

    aput-object v6, v1, v7

    const-string v6, "0"

    aput-object v6, v1, v8

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->simstate:Ljava/lang/String;

    const-string v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->simstate:Ljava/lang/String;

    const-string v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v6, v5, v7

    aput-object v6, v1, v7

    aget-object v6, v5, v8

    aput-object v6, v1, v8

    :goto_0
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->simOperator:Ljava/lang/String;

    const-string v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, ","

    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->simOperator:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->simOperator:Ljava/lang/String;

    const-string v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v6, v4, v7

    aput-object v6, v0, v7

    aget-object v6, v4, v8

    aput-object v6, v0, v8

    :goto_1
    sget-boolean v6, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "WifiConfigController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Sim State : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v1, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Sim State2 : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v1, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " simslot2only : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->simslot2only:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v6, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v6, :cond_1

    const-string v6, "WifiConfigController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "operator_1: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v0, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " operator_2: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v0, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v9, 0x7f100537

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v9, 0x7f100537

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    const-string v6, "46000"

    aget-object v9, v0, v7

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "46002"

    aget-object v9, v0, v7

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "46007"

    aget-object v9, v0, v7

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_2
    move v2, v8

    :goto_2
    const-string v6, "46000"

    aget-object v9, v0, v8

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "46002"

    aget-object v9, v0, v8

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "46007"

    aget-object v9, v0, v8

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_3
    move v3, v8

    :goto_3
    const-string v6, "1"

    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->simslot2only:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const-string v6, "WifiConfigController"

    const-string v7, "Sim 2 only , QC 1CHIP DSDS project"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_4

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    iput v13, p0, Lcom/android/settings/wifi/WifiConfigController;->mSimNum:I

    :cond_4
    :goto_4
    const-string v6, "WifiConfigController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mSimNum : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/wifi/WifiConfigController;->mSimNum:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_5
    return-void

    :cond_6
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->simstate:Ljava/lang/String;

    aput-object v6, v1, v7

    goto/16 :goto_0

    :cond_7
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->simOperator:Ljava/lang/String;

    aput-object v6, v0, v7

    goto/16 :goto_1

    :cond_8
    move v2, v7

    goto/16 :goto_2

    :cond_9
    move v3, v7

    goto :goto_3

    :cond_a
    const-string v6, "0"

    aget-object v9, v1, v7

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "0"

    aget-object v9, v1, v8

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "WifiConfigController"

    const-string v7, "Sim 2 only , 2CHIP/ 1CHIP DSDA "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_4

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    iput v13, p0, Lcom/android/settings/wifi/WifiConfigController;->mSimNum:I

    goto :goto_4

    :cond_b
    const-string v6, "0"

    aget-object v9, v1, v7

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    const-string v6, "0"

    aget-object v9, v1, v8

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    const-string v6, "WifiConfigController"

    const-string v7, "No Sim Card"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_c
    const-string v6, "0"

    aget-object v9, v1, v7

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    const-string v6, "0"

    aget-object v9, v1, v8

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    const-string v6, "WifiConfigController"

    const-string v9, "2 Sim Cards"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_d

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    iput v8, p0, Lcom/android/settings/wifi/WifiConfigController;->mSimNum:I

    :cond_d
    if-eqz v3, :cond_4

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setEnabled(Z)V

    if-nez v2, :cond_4

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    iput v13, p0, Lcom/android/settings/wifi/WifiConfigController;->mSimNum:I

    goto/16 :goto_4

    :cond_e
    const-string v6, "WifiConfigController"

    const-string v7, "Sim 1 only"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_4

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    iput v8, p0, Lcom/android/settings/wifi/WifiConfigController;->mSimNum:I

    goto/16 :goto_4
.end method

.method private showSoftKeyboard(Z)V
    .locals 6

    const-string v3, "WifiConfigController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showSoftKeyboard = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isRequestHideKeyboard = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    if-nez v3, :cond_1

    const-string v3, "WifiConfigController"

    const-string v4, "    **** showSoftKeyboard :: showSoftInput !!!*****"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_1
    return-void
.end method

.method private updatePasswordVisibility(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz p1, :cond_1

    const/16 v1, 0x90

    :goto_0
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setInputType(I)V

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v1, 0x80

    goto :goto_0
.end method

.method private validateIpConfigFields(Landroid/net/StaticIpConfiguration;)I
    .locals 13

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    if-nez v10, :cond_0

    const/4 v10, 0x0

    :goto_0
    return v10

    :cond_0
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    const v10, 0x7f0a0419

    goto :goto_0

    :cond_1
    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiConfigController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v6

    if-nez v6, :cond_2

    const v10, 0x7f0a0419

    goto :goto_0

    :cond_2
    :try_start_0
    iget-boolean v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAutoGenFirstTime:Z

    if-eqz v10, :cond_3

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAutoGenFirstTime:Z

    invoke-direct {p0, v6}, Lcom/android/settings/wifi/WifiConfigController;->generateBlankFields(Ljava/net/Inet4Address;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    const/4 v9, -0x1

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-boolean v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAutoGenFirstTime:Z

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v11}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0a0424

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_5

    const/16 v10, 0x20

    if-le v9, v10, :cond_7

    :cond_5
    const v10, 0x7f0a041c

    goto :goto_0

    :catch_0
    move-exception v3

    const v10, 0x7f0a0419

    goto :goto_0

    :cond_6
    const v10, 0x7f0a041c

    goto :goto_0

    :cond_7
    :try_start_1
    new-instance v10, Landroid/net/LinkAddress;

    invoke-direct {v10, v6, v9}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v10, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    const v10, 0x7f0a041a

    goto/16 :goto_0

    :catch_1
    move-exception v3

    const v10, 0x7f0a041c

    goto/16 :goto_0

    :cond_8
    const/4 v5, 0x0

    :try_start_2
    invoke-static {v4}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v5

    iput-object v5, p1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    const v10, 0x7f0a041b

    goto/16 :goto_0

    :catch_2
    move-exception v3

    const v10, 0x7f0a041a

    goto/16 :goto_0

    :cond_9
    const/4 v2, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_b

    :try_start_3
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v2

    iget-object v10, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    :try_start_4
    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v2

    iget-object v10, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_0

    :catch_3
    move-exception v3

    const v10, 0x7f0a041b

    goto/16 :goto_0

    :cond_b
    iget-object v10, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-static {}, Ljava/net/InetAddress;->getLoopbackAddress()Ljava/net/InetAddress;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_4
    move-exception v3

    const v10, 0x7f0a041b

    goto/16 :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mTextViewChangedHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/wifi/WifiConfigController$4;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiConfigController$4;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method enableSubmitIfAppropriate()V
    .locals 14

    sget-boolean v10, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v10, :cond_0

    const-string v10, "WifiConfigController"

    const-string v11, "enableSubmitIfAppropriate"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v10}, Lcom/android/settings/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v8

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v10}, Lcom/android/settings/wifi/WifiConfigUiBase;->getForgetButton()Landroid/widget/Button;

    move-result-object v3

    if-nez v8, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v9, 0x0

    const/4 v2, 0x1

    const/4 v7, 0x0

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->length()I

    move-result v10

    if-nez v10, :cond_3

    const/4 v2, 0x0

    :cond_3
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v9

    :cond_4
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v10, :cond_1a

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->length()I

    move-result v5

    iget-boolean v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mRetry:Z

    if-eqz v10, :cond_f

    iget v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_5

    if-lez v5, :cond_5

    const/16 v10, 0x8

    if-ge v5, v10, :cond_5

    const-string v10, "WifiConfigController"

    const-string v11, "password invalid (retry dialog)"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    :cond_5
    :goto_1
    const-string v10, "VZW"

    sget-object v11, Lcom/android/settings/Utils;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v10, :cond_7

    iget-boolean v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->length()I

    move-result v10

    if-lez v10, :cond_7

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v10}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v11, v11, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/settings/wifi/WifiConfigController;->bIsChangedSsid:Z

    if-eqz v0, :cond_6

    const/4 v10, 0x0

    iput-boolean v10, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    :cond_6
    :goto_2
    if-eqz v0, :cond_7

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v10, v0}, Lcom/android/settings/wifi/AccessPoint;->updateConfig(Landroid/net/wifi/WifiConfiguration;)V

    :cond_7
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v10, :cond_23

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v10, :cond_23

    iget-boolean v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    if-eqz v10, :cond_9

    iget-boolean v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mRetry:Z

    if-nez v10, :cond_9

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->length()I

    move-result v10

    if-nez v10, :cond_9

    iget v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v11, v11, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eq v10, v11, :cond_8

    iget v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-nez v10, :cond_9

    :cond_8
    const/4 v2, 0x1

    const/4 v7, 0x0

    iget-boolean v10, p0, Lcom/android/settings/wifi/WifiConfigController;->bIsChangedSsid:Z

    if-eqz v10, :cond_9

    iget v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-eqz v10, :cond_9

    const/4 v2, 0x0

    const/4 v7, 0x1

    :cond_9
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v10, v10, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_b

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v10}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v11, v11, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-ne v10, v11, :cond_1c

    iget-boolean v10, p0, Lcom/android/settings/wifi/WifiConfigController;->bIsChangedSsid:Z

    if-nez v10, :cond_1c

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/settings/wifi/WifiConfigController;->bIsChangedSecurity:Z

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const v11, 0x7f0a03a6

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setHint(I)V

    if-eqz v0, :cond_a

    const/4 v10, 0x0

    iput-boolean v10, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    :cond_a
    :goto_3
    if-eqz v0, :cond_b

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v10, v0}, Lcom/android/settings/wifi/AccessPoint;->updateConfig(Landroid/net/wifi/WifiConfiguration;)V

    :cond_b
    :goto_4
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->ipAndProxyFieldsAreValid()Z

    move-result v10

    if-eqz v10, :cond_24

    const/4 v2, 0x1

    :goto_5
    sget-boolean v10, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v10, :cond_c

    const-string v10, "WifiConfigController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mRetry:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mRetry:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " password invalid:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-boolean v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mRetry:Z

    if-eqz v10, :cond_25

    if-eqz v7, :cond_25

    const/4 v2, 0x0

    :cond_d
    :goto_6
    iget-boolean v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    if-eqz v10, :cond_e

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v10, :cond_e

    if-nez v9, :cond_e

    const/4 v2, 0x0

    :cond_e
    invoke-virtual {v8, v2}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {v8, v2}, Landroid/widget/Button;->setFocusable(Z)V

    const-string v10, "VZW"

    sget-object v11, Lcom/android/settings/Utils;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_f
    iget v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_10

    if-eqz v5, :cond_11

    const/16 v10, 0xd

    if-le v5, v10, :cond_10

    const/16 v10, 0x1a

    if-ne v5, v10, :cond_11

    :cond_10
    iget v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_17

    const/16 v10, 0x8

    if-ge v5, v10, :cond_17

    :cond_11
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v10, "[0-9A-Fa-f]*"

    invoke-virtual {v6, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    iget v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_15

    if-eqz v5, :cond_15

    if-nez v4, :cond_12

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v10}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const v10, 0x7f0a03bc

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const/16 v13, 0xd

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v1, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v1, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->pToast:Landroid/widget/Toast;

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/16 v13, 0xd

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const/16 v11, 0xd

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->pToast:Landroid/widget/Toast;

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :cond_12
    const/16 v10, 0x1a

    if-le v5, v10, :cond_13

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v10}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const v10, 0x7f0a03bd

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const/16 v13, 0x1a

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v1, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v1, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->pToast:Landroid/widget/Toast;

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/16 v13, 0x1a

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const/16 v11, 0x1a

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->pToast:Landroid/widget/Toast;

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :cond_13
    sget-boolean v10, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v10, :cond_14

    const-string v10, "WifiConfigController"

    const-string v11, "password invalid"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_15
    sget-boolean v10, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v10, :cond_16

    const-string v10, "WifiConfigController"

    const-string v11, "password invalid"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_17
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v10, v10, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_5

    iget v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_5

    if-eqz v5, :cond_18

    if-lez v5, :cond_5

    const/16 v10, 0x8

    if-ge v5, v10, :cond_5

    :cond_18
    sget-boolean v10, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v10, :cond_19

    const-string v10, "WifiConfigController"

    const-string v11, "password invalid (saved ap)"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_1a
    const-string v10, "WifiConfigController"

    const-string v11, "mPasswordView is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_1b
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/settings/wifi/WifiConfigController;->bIsChangedSsid:Z

    if-eqz v0, :cond_6

    const/4 v10, 0x1

    iput-boolean v10, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    goto/16 :goto_2

    :cond_1c
    iget v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v11, v11, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eq v10, v11, :cond_1d

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/settings/wifi/WifiConfigController;->bIsChangedSecurity:Z

    iget v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-eqz v10, :cond_1e

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->length()I

    move-result v10

    if-nez v10, :cond_1e

    const/4 v7, 0x1

    :cond_1d
    :goto_7
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_a

    const/4 v10, 0x1

    iput-boolean v10, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    goto/16 :goto_3

    :cond_1e
    iget v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1f

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->length()I

    move-result v10

    if-eqz v10, :cond_20

    :cond_1f
    iget v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_21

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->length()I

    move-result v10

    const/16 v11, 0x8

    if-ge v10, v11, :cond_21

    :cond_20
    const/4 v7, 0x1

    goto :goto_7

    :cond_21
    iget v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1d

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->length()I

    move-result v10

    if-eqz v10, :cond_22

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->length()I

    move-result v10

    if-lez v10, :cond_1d

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->length()I

    move-result v10

    const/16 v11, 0x8

    if-ge v10, v11, :cond_1d

    :cond_22
    const/4 v7, 0x1

    goto :goto_7

    :cond_23
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v10, :cond_b

    iget v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->length()I

    move-result v10

    if-nez v10, :cond_b

    const/4 v2, 0x0

    const/4 v7, 0x1

    iget v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_b

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->isNeededPasswordView()Z

    move-result v10

    if-nez v10, :cond_b

    const/4 v2, 0x1

    const/4 v7, 0x0

    goto/16 :goto_4

    :cond_24
    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_25
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v10, :cond_26

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v10, v10, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_27

    :cond_26
    if-eqz v7, :cond_27

    const/4 v2, 0x0

    goto/16 :goto_6

    :cond_27
    const-string v10, "VZW"

    sget-object v11, Lcom/android/settings/Utils;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    iget-boolean v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    if-eqz v10, :cond_d

    if-eqz v7, :cond_d

    const/4 v2, 0x0

    goto/16 :goto_6
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 18

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v13, v13, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    if-nez v13, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const/4 v13, 0x1

    iput-boolean v13, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    packed-switch v13, :pswitch_data_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v13, v13, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v13, v13, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v13}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v13, "VZW"

    sget-object v14, Lcom/android/settings/Utils;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mRetry:Z

    if-nez v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v14, 0x7f1004b8

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v13, v13, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iput v13, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v13, v13, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v13}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_2

    :pswitch_0
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/BitSet;->set(I)V

    :cond_5
    :goto_3
    new-instance v13, Landroid/net/IpConfiguration;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    move-object/from16 v17, v0

    invoke-direct/range {v13 .. v17}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    invoke-virtual {v3, v13}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/BitSet;->set(I)V

    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/BitSet;->set(I)V

    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/util/BitSet;->set(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->length()I

    move-result v13

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->length()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v13, 0xa

    if-eq v6, v13, :cond_6

    const/16 v13, 0x1a

    if-eq v6, v13, :cond_6

    const/16 v13, 0x3a

    if-ne v6, v13, :cond_7

    :cond_6
    const-string v13, "[0-9A-Fa-f]*"

    invoke-virtual {v7, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v7, v13, v14

    goto :goto_3

    :cond_7
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v16, 0x22

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x22

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    goto/16 :goto_3

    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedFt:Z

    if-eqz v13, :cond_8

    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Ljava/util/BitSet;->set(I)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->length()I

    move-result v13

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v13, "[0-9A-Fa-f]{64}"

    invoke-virtual {v7, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    iput-object v7, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_3

    :cond_8
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/util/BitSet;->set(I)V

    goto :goto_4

    :cond_9
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v14, 0x22

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x22

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_3

    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedFt:Z

    if-eqz v13, :cond_e

    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v14, 0x9

    invoke-virtual {v13, v14}, Ljava/util/BitSet;->set(I)V

    :goto_5
    new-instance v13, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v13}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v14, -0x1

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase1Method(I)V

    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v14, ""

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setPacFile(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v13}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v13}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    sget-boolean v13, Lcom/android/settings/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v13, v13, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    const-string v14, "CMCC"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    const/4 v13, 0x1

    if-ne v4, v13, :cond_a

    const/4 v4, 0x4

    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase1Spinner:Landroid/widget/Spinner;

    invoke-virtual {v13}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v13}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v9

    const-string v13, "PEAP"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    packed-switch v9, :pswitch_data_1

    const-string v13, "WifiConfigController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unknown phase2 method"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v13}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    const-string v1, ""

    :cond_b
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v13, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v13}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    const-string v2, ""

    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->certListFromCCM:Ljava/util/List;

    if-eqz v13, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->certListFromCCM:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    const-string v13, " [KNOX]"

    const-string v14, ""

    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setCCMEnabled(Z)V

    :cond_d
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v13, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->isShown()Z

    move-result v13

    if-eqz v13, :cond_19

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->length()I

    move-result v13

    if-lez v13, :cond_5

    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedCckm:Z

    if-eqz v13, :cond_f

    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v14, 0x7

    invoke-virtual {v13, v14}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_5

    :cond_f
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Ljava/util/BitSet;->set(I)V

    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v14, 0x3

    invoke-virtual {v13, v14}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_5

    :pswitch_4
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_6

    :pswitch_5
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v14, 0x3

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_6

    :pswitch_6
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_6

    :cond_10
    const-string v13, "FAST"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v14, 0x7

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v13, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase1Method(I)V

    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v14, "/data/misc/wifi/wpa_supplicant.pac"

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setPacFile(Ljava/lang/String;)V

    packed-switch v9, :pswitch_data_2

    const-string v13, "WifiConfigController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unknown phase2 method"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :pswitch_7
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_6

    :pswitch_8
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v14, 0x3

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_6

    :pswitch_9
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_6

    :cond_11
    const-string v13, "TLS"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    :cond_12
    :goto_7
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v13, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_6

    :cond_13
    const-string v13, "TTLS"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14

    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_7

    :cond_14
    const-string v13, "PWD"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v14, 0x3

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_7

    :cond_15
    const-string v13, "SIM"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16

    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_7

    :cond_16
    const-string v13, "AKA"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v14, 0x5

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_7

    :cond_17
    const-string v13, "AKA\'"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18

    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v14, 0x6

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_7

    :cond_18
    const-string v13, "LEAP"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_7

    :cond_19
    sget-boolean v13, Lcom/android/settings/Utils;->ENABLE_SIM_SELECTION_UI:Z

    if-eqz v13, :cond_1a

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mSimNum:I

    iput v13, v3, Landroid/net/wifi/WifiConfiguration;->simnum:I

    goto/16 :goto_3

    :cond_1a
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_a
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v14, 0x5

    invoke-virtual {v13, v14}, Ljava/util/BitSet;->set(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->length()I

    move-result v13

    if-eqz v13, :cond_1b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v13, "[0-9A-Fa-f]{64}"

    invoke-virtual {v7, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1c

    iput-object v7, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :cond_1b
    :goto_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiPskType:Landroid/widget/Spinner;

    if-eqz v13, :cond_5

    const-string v13, "WifiConfigController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mWapiPskType.getSelectedItemPosition() "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiPskType:Landroid/widget/Spinner;

    invoke-virtual {v15}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v13, Lcom/android/settings/wifi/WifiConfigController;->WAPI_PSK_TYPE_VALUES:[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiPskType:Landroid/widget/Spinner;

    invoke-virtual {v14}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v14

    aget v5, v13, v14

    iput v5, v3, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    goto/16 :goto_3

    :cond_1c
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v14, 0x22

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x22

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_8

    :pswitch_b
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v14, 0x6

    invoke-virtual {v13, v14}, Ljava/util/BitSet;->set(I)V

    new-instance v13, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v13}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiCertIndex:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiCertIndex:I

    iput v13, v3, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    if-eqz v13, :cond_5

    const-string v13, "WifiConfigController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mWapiAsCert.getSelectedItemPosition() "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v15}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v13, "WifiConfigController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mWapiAsCert.getSelectedItem() "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v15}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v13}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1d

    const-string v11, ""

    :cond_1d
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v13}, Landroid/net/wifi/WifiEnterpriseConfig;->getWapiASCertificateAlias()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v3, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v13}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v13

    if-nez v13, :cond_1f

    const-string v13, ""

    :goto_9
    iput-object v13, v3, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    invoke-virtual {v13}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1e

    const-string v12, ""

    :cond_1e
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v13, v12}, Landroid/net/wifi/WifiEnterpriseConfig;->setWapiUserCertificateAlias(Ljava/lang/String;)V

    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v13}, Landroid/net/wifi/WifiEnterpriseConfig;->getWapiUserCertificateAlias()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v3, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    invoke-virtual {v13}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v13

    if-nez v13, :cond_20

    const-string v13, ""

    :goto_a
    iput-object v13, v3, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    goto/16 :goto_3

    :cond_1f
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "keystore://WAPIAS_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v13}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_9

    :cond_20
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "keystore://WAPIUSR_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    invoke-virtual {v13}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_a

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_a
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public getDialogButton(I)Z
    .locals 2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mShowDoneButton:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    sget-boolean v1, Lcom/android/settings/wifi/WifiConfigController;->mCanceltoForget:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/settings/wifi/WifiConfigController;->mCanceltoForget:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getVzwButton(I)I
    .locals 1

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_0

    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_NONE:I

    :goto_0
    return v0

    :pswitch_0
    sget v0, Lcom/android/settings/wifi/WifiConfigController;->mVzwPositiveButton:I

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/android/settings/wifi/WifiConfigController;->mVzwNeutralButton:I

    goto :goto_0

    :pswitch_2
    sget v0, Lcom/android/settings/wifi/WifiConfigController;->mVzwNegativeButton:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isEdit()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    return v0
.end method

.method public isNeededPasswordView()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TLS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SIM"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "AKA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "AKA\'"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedtoForgetNetwork()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiConfigController;->bIsChangedSsid:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiConfigController;->bIsChangedSecurity:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isRetryDialog()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mRetry:Z

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6

    const v5, 0x7f100539

    const v4, 0x7f100538

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->playSoundEffect(I)V

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v3, 0x7f100526

    if-ne v0, v3, :cond_2

    iput-boolean p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mSNSEnabled:Z

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSNSSetupChanged:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSNSSetupChanged:Z

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    if-ne v0, v4, :cond_4

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iput v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mSimNum:I

    const-string v0, "WifiConfigController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(CheckBox) mSimNum : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mSimNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    if-ne v0, v5, :cond_0

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSimNum:I

    const-string v0, "WifiConfigController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(CheckBox) mSimNum : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mSimNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 20

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f1004c0

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/CheckBox;

    invoke-virtual/range {v17 .. v17}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual/range {v17 .. v17}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v12

    const-string v2, "content://com.sec.knox.provider2/WifiPolicy"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "getPasswordHidden"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_0

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "getPasswordHidden"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v12, :cond_3

    const/16 v2, 0x90

    :goto_2
    or-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setInputType(I)V

    if-ltz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    const-string v2, "WifiConfigController"

    const-string v4, "onClick: EDM is called when the user clicks the show password"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    const/16 v2, 0x80

    goto :goto_2

    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settings/wifi/WifiConfigController;->updatePasswordVisibility(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f100528

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/CheckBox;

    invoke-virtual {v13}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    :goto_4
    invoke-virtual {v13, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {v13}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v4, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v2

    sget-object v4, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v2, v4, :cond_8

    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v2

    sget-object v4, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v2, v4, :cond_8

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_b

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "input_method"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v11, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    if-eqz v2, :cond_5

    invoke-virtual {v10}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v11, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_5
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/android/settings/wifi/WifiConfigController$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/settings/wifi/WifiConfigController$5;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    const-wide/16 v6, 0x96

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f100529

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_0

    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    goto :goto_5

    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    goto :goto_5

    :cond_a
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    goto :goto_5

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f100529

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-nez v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v11

    if-eqz v11, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v11, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_d
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    :cond_e
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v2, "SIM"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "AKA"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "AKA\'"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_f
    if-eqz v10, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-nez v2, :cond_10

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "input_method"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v11, :cond_10

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    invoke-virtual {v10}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v11, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_10
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f100529

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_6

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_6

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_6

    :cond_14
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    goto :goto_7

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v4, :cond_16

    if-eqz v10, :cond_10

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "input_method"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v11, :cond_10

    const-string v2, "WifiConfigController"

    const-string v4, "    **** [onClick] connected, uncheked hideSoftInputFromWindow *****"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    invoke-virtual {v10}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v11, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_7

    :cond_16
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-nez v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-nez v2, :cond_17

    if-eqz v10, :cond_10

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "input_method"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v11, :cond_10

    const-string v2, "WifiConfigController"

    const-string v4, "    **** [onClick] uncheked hideSoftInputFromWindow *****"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    invoke-virtual {v10}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v11, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto/16 :goto_7

    :cond_17
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    goto/16 :goto_7

    :sswitch_2
    const v2, 0x7f100533

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/CheckBox;

    invoke-virtual/range {v16 .. v16}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_18

    const/4 v2, 0x1

    :goto_8
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual/range {v16 .. v16}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedFt:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedFt:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedCckm:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f100535

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    :cond_18
    const/4 v2, 0x0

    goto :goto_8

    :sswitch_3
    const v2, 0x7f100535

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/CheckBox;

    invoke-virtual {v15}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_19

    const/4 v2, 0x1

    :goto_9
    invoke-virtual {v15, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {v15}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedCckm:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedCckm:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedFt:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f100533

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    :cond_19
    const/4 v2, 0x0

    goto :goto_9

    :sswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f10052d

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/CheckBox;

    invoke-virtual {v14}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1a

    const/4 v2, 0x1

    :goto_a
    invoke-virtual {v14, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {v14}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f10052e

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setImeOptions(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthId:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthPassword:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthId:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthPassword:Landroid/widget/TextView;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setImeOptions(I)V

    goto/16 :goto_0

    :cond_1a
    const/4 v2, 0x0

    goto :goto_a

    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f10052e

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setImeOptions(I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f100521 -> :sswitch_0
        0x7f100527 -> :sswitch_1
        0x7f10052c -> :sswitch_4
        0x7f100532 -> :sswitch_2
        0x7f100534 -> :sswitch_3
    .end sparse-switch
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x5

    if-ne p2, v2, :cond_11

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f10051e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-ne v2, v1, :cond_6

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-ne v2, v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    :cond_8
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    :cond_a
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    :cond_b
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    goto/16 :goto_0

    :cond_c
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    goto/16 :goto_0

    :cond_d
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    goto/16 :goto_0

    :cond_e
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    goto/16 :goto_0

    :cond_f
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthId:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthId:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    goto/16 :goto_0

    :cond_10
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthId:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthPassword:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthPassword:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    goto/16 :goto_0

    :cond_11
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    if-ne p1, v5, :cond_e

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->pToast:Landroid/widget/Toast;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->pToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->cancel()V

    :cond_0
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->pToast:Landroid/widget/Toast;

    iput p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showSecurityFields()V

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showKeyMgmtFields()V

    :goto_0
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    if-nez v5, :cond_11

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    if-nez v5, :cond_11

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_18

    const-string v4, "PEAP"

    :goto_2
    const-string v5, "SIM"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "AKA"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "AKA\'"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    :cond_2
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-nez v5, :cond_19

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    :cond_3
    :goto_3
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    if-eqz v5, :cond_6

    iget v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    if-ne p1, v5, :cond_6

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_4
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    :cond_5
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    :cond_6
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f100528

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v5, :cond_1b

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1b

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, v5, :cond_7

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    :cond_7
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    :cond_8
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/settings/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    :cond_9
    :goto_4
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    if-nez v5, :cond_23

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_21

    const-string v4, "PEAP"

    :goto_5
    const-string v5, "SIM"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "AKA"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "AKA\'"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    :cond_a
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    :cond_b
    :goto_6
    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_27

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v3, :cond_c

    const-string v5, "WifiConfigController"

    const-string v6, "    **** [onItemSelected] hideSoftInputFromWindow *****"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_c
    :goto_7
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    if-nez v5, :cond_d

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    new-instance v6, Lcom/android/settings/wifi/WifiConfigController$6;

    invoke-direct {v6, p0}, Lcom/android/settings/wifi/WifiConfigController$6;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_d
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    return-void

    :cond_e
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-ne p1, v5, :cond_f

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showSecurityFields()V

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    goto/16 :goto_0

    :cond_f
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, v5, :cond_10

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showProxyFields()V

    goto/16 :goto_0

    :cond_10
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showIpConfigFields()V

    goto/16 :goto_0

    :cond_11
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    if-nez v5, :cond_13

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setImeOptions(I)V

    goto/16 :goto_1

    :cond_12
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setImeOptions(I)V

    goto/16 :goto_1

    :cond_13
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    if-eqz v5, :cond_14

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    if-nez v5, :cond_15

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    :cond_14
    :goto_8
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    if-eqz v5, :cond_17

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f10052d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_16

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setImeOptions(I)V

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthPassword:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthPassword:Landroid/widget/TextView;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setImeOptions(I)V

    goto/16 :goto_1

    :cond_15
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_8

    :cond_16
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setImeOptions(I)V

    goto/16 :goto_1

    :cond_17
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setImeOptions(I)V

    goto/16 :goto_1

    :cond_18
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    :cond_19
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_3

    :cond_1a
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f100528

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_3

    :cond_1b
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v5, :cond_20

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    if-nez v5, :cond_20

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-nez v5, :cond_1e

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_1c

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-nez v5, :cond_1d

    :cond_1c
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    :cond_1d
    :goto_9
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v5, v6, :cond_9

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v5

    sget-object v6, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v5, v6, :cond_9

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v5

    sget-object v6, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v5, v6, :cond_9

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    goto/16 :goto_4

    :cond_1e
    iget v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-nez v5, :cond_1d

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    if-eqz v3, :cond_1f

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_1f
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/settings/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    goto :goto_9

    :cond_20
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v5, :cond_1d

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v5, :cond_1d

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_9

    :cond_21
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_5

    :cond_22
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f100528

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-nez v5, :cond_b

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_6

    :cond_23
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_25

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, v5, :cond_24

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v5, :cond_24

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->requestFocus()Z

    :cond_24
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/settings/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    goto/16 :goto_6

    :cond_25
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_b

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, v5, :cond_26

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    if-eqz v5, :cond_26

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->requestFocus()Z

    :cond_26
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/settings/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    goto/16 :goto_6

    :cond_27
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v2, :cond_c

    const-string v5, "WifiConfigController"

    const-string v6, "    **** [onItemSelected] hideSoftInputFromWindow *****"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto/16 :goto_7
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public updateShowAdvancedOptions()V
    .locals 3

    const v2, 0x7f100529

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f100528

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateShowPassword()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f1004c0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x90

    :goto_0
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x80

    goto :goto_0
.end method

.method public updateShowProxyAuthenticationOptions()V
    .locals 3

    const v2, 0x7f10052e

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f10052d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
