.class public Lcom/android/settings/wifi/WifiApDialog;
.super Landroid/app/AlertDialog;
.source "WifiApDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static final DBG:Z

.field private static final MAX_CLIENT:I

.field private static mSecurityTypeIndex:I

.field private static final mWifiShowPassword:Z

.field private static sSalesCode:Ljava/lang/String;


# instance fields
.field private CheckBoxChannel2g:Landroid/widget/CheckBox;

.field private CheckBoxChannel5g:Landroid/widget/CheckBox;

.field private CheckBoxChannel5gPrefer:Landroid/widget/CheckBox;

.field private advanced:Landroid/widget/CheckBox;

.field private bTimeOutSpinner:Z

.field private customView:Landroid/view/View;

.field focusListener:Landroid/view/View$OnFocusChangeListener;

.field private hideSsidDoNotShowAgain:Z

.field private isTimeoutValueChanged:Z

.field private mAdvancedShowLayout:Landroid/widget/LinearLayout;

.field private mChannel:Landroid/widget/Spinner;

.field private mChannel2gLayout:Landroid/widget/LinearLayout;

.field private mChannel5g:Landroid/widget/TextView;

.field private mChannel5gLayout:Landroid/widget/LinearLayout;

.field private mChannel5gLayoutPrefer:Landroid/widget/LinearLayout;

.field private mChannel5genabled:Z

.field private mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field public mDismissIfOpen:Z

.field private mHideSsid:Landroid/widget/CheckBox;

.field private mHideSsidDoNotShowAgain:Landroid/widget/CheckBox;

.field private mLast2gChannel:I

.field private mLast5gChannel:I

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mMacaddrAcl:I

.field private mNumBasedOnCharger:I

.field private mNumBasedOnCountry:I

.field private mPassword:Landroid/widget/EditText;

.field private mPasswordShowLayout:Landroid/widget/LinearLayout;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSecurity:Landroid/widget/Spinner;

.field private mSecurityMsg:Landroid/widget/TextView;

.field private mSelectedChannel:I

.field private mSelectedMaxClient:I

.field private mSelectedTimeoutValue:I

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mSsid:Landroid/widget/EditText;

.field private mSsidHideLayout:Landroid/widget/LinearLayout;

.field private mTempPassworld:Ljava/lang/String;

.field private mTempSecurityTypeIndex:I

.field private mTempSsid:Ljava/lang/String;

.field mTempWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mUserSelectOpenSecurity:Z

.field private mView:Landroid/view/View;

.field mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private maxClientSpinner:Landroid/widget/Spinner;

.field passwordWatcher:Landroid/text/TextWatcher;

.field ssidWatcher:Landroid/text/TextWatcher;

.field private timeoutSettingsSpinner:Landroid/widget/Spinner;

.field private wifiAp5gDoNotShowAgain:Z

.field private wifiAp5gItem:[Ljava/lang/String;

.field private wifiAp5gItemBasedOnCharger:[Ljava/lang/String;

.field private wifiAp5gItemBasedOnCountry:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/WifiApDialog;->DBG:Z

    const/4 v0, 0x0

    sput v0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    const-string v0, "8"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/settings/wifi/WifiApDialog;->MAX_CLIENT:I

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableShowPasswordAsDefault"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/WifiApDialog;->mWifiShowPassword:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    iput v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempSecurityTypeIndex:I

    iput v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mMacaddrAcl:I

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempSsid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempPassworld:Ljava/lang/String;

    iput v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mLast2gChannel:I

    iput v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mLast5gChannel:I

    iput v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    iput v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedMaxClient:I

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiApDialog;->hideSsidDoNotShowAgain:Z

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gDoNotShowAgain:Z

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel5genabled:Z

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "36"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gItemBasedOnCharger:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "149"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gItemBasedOnCountry:[Ljava/lang/String;

    iput v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mNumBasedOnCharger:I

    iput v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mNumBasedOnCountry:I

    iput v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedTimeoutValue:I

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiApDialog;->isTimeoutValueChanged:Z

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mUserSelectOpenSecurity:Z

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mDismissIfOpen:Z

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiApDialog;->bTimeOutSpinner:Z

    new-instance v0, Lcom/android/settings/wifi/WifiApDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApDialog$1;-><init>(Lcom/android/settings/wifi/WifiApDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/wifi/WifiApDialog$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApDialog$2;-><init>(Lcom/android/settings/wifi/WifiApDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->focusListener:Landroid/view/View$OnFocusChangeListener;

    new-instance v0, Lcom/android/settings/wifi/WifiApDialog$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApDialog$3;-><init>(Lcom/android/settings/wifi/WifiApDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->ssidWatcher:Landroid/text/TextWatcher;

    new-instance v0, Lcom/android/settings/wifi/WifiApDialog$4;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApDialog$4;-><init>(Lcom/android/settings/wifi/WifiApDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->passwordWatcher:Landroid/text/TextWatcher;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p3, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p3, :cond_2

    invoke-static {p1}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    sput v0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    :cond_0
    iget v0, p3, Landroid/net/wifi/WifiConfiguration;->channel:I

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_3

    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mLast2gChannel:I

    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mMacaddrAcl:I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedMaxClient:I

    const-string v0, "TMO"

    const-string v1, "TMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "NEWCO"

    const-string v1, "TMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiApDialog;->getTimeoutValueFromSheredPreference(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiApDialog;->getTimeoutIndexFromValue(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedTimeoutValue:I

    :cond_2
    return-void

    :cond_3
    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mLast5gChannel:I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;ZZ)V
    .locals 4

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    iput v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempSecurityTypeIndex:I

    iput v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mMacaddrAcl:I

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempSsid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempPassworld:Ljava/lang/String;

    iput v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mLast2gChannel:I

    iput v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mLast5gChannel:I

    iput v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    iput v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedMaxClient:I

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiApDialog;->hideSsidDoNotShowAgain:Z

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gDoNotShowAgain:Z

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel5genabled:Z

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "36"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gItemBasedOnCharger:[Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "149"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gItemBasedOnCountry:[Ljava/lang/String;

    iput v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mNumBasedOnCharger:I

    iput v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mNumBasedOnCountry:I

    iput v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedTimeoutValue:I

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiApDialog;->isTimeoutValueChanged:Z

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mUserSelectOpenSecurity:Z

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mDismissIfOpen:Z

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiApDialog;->bTimeOutSpinner:Z

    new-instance v0, Lcom/android/settings/wifi/WifiApDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApDialog$1;-><init>(Lcom/android/settings/wifi/WifiApDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/wifi/WifiApDialog$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApDialog$2;-><init>(Lcom/android/settings/wifi/WifiApDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->focusListener:Landroid/view/View$OnFocusChangeListener;

    new-instance v0, Lcom/android/settings/wifi/WifiApDialog$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApDialog$3;-><init>(Lcom/android/settings/wifi/WifiApDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->ssidWatcher:Landroid/text/TextWatcher;

    new-instance v0, Lcom/android/settings/wifi/WifiApDialog$4;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApDialog$4;-><init>(Lcom/android/settings/wifi/WifiApDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->passwordWatcher:Landroid/text/TextWatcher;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p4, :cond_3

    iput-object p4, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    sput v0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    const-string v0, "WifiApDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiApDialog2 - mSecurityTypeIndex ?  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   permitDismiss ?   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   continueOpen ?   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p5, p0, Lcom/android/settings/wifi/WifiApDialog;->mDismissIfOpen:Z

    if-eqz p6, :cond_4

    sput v3, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    :cond_0
    :goto_1
    iget v0, p3, Landroid/net/wifi/WifiConfiguration;->channel:I

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_5

    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mLast2gChannel:I

    :goto_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mMacaddrAcl:I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedMaxClient:I

    const-string v0, "TMO"

    const-string v1, "TMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "NEWCO"

    const-string v1, "TMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiApDialog;->getTimeoutValueFromSheredPreference(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiApDialog;->getTimeoutIndexFromValue(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedTimeoutValue:I

    :cond_2
    return-void

    :cond_3
    iput-object p3, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    goto :goto_0

    :cond_4
    if-nez p6, :cond_0

    sget v0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mDismissIfOpen:Z

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mLast5gChannel:I

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiApDialog;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->getChgType()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiApDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mNumBasedOnCharger:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/WifiApDialog;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel5g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/WifiApDialog;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/wifi/WifiApDialog;->mNumBasedOnCharger:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/WifiApDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/settings/wifi/WifiApDialog;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/WifiApDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mLast2gChannel:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/settings/wifi/WifiApDialog;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempSsid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/settings/wifi/WifiApDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempSsid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/settings/wifi/WifiApDialog;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/wifi/WifiApDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->validate()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/wifi/WifiApDialog;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempPassworld:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/settings/wifi/WifiApDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempPassworld:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/settings/wifi/WifiApDialog;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/wifi/WifiApDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->restartFocusedViewInput()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings/wifi/WifiApDialog;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsidDoNotShowAgain:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiApDialog;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gItem:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings/wifi/WifiApDialog;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSharedPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/settings/wifi/WifiApDialog;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSharedPref:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/settings/wifi/WifiApDialog;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gItem:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/settings/wifi/WifiApDialog;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsid:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiApDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mNumBasedOnCountry:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiApDialog;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gItemBasedOnCharger:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiApDialog;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gItemBasedOnCountry:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiApDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WifiApDialog;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel5g:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/WifiApDialog;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel2g:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/WifiApDialog;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    return-object v0
.end method

.method private getChgType()Z
    .locals 8

    const-string v0, "/sys/class/sec/switch/chg_type"

    const/4 v1, 0x0

    const-string v3, ""

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    const-string v5, "WifiApDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ChgType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v1, v2

    :cond_1
    :goto_0
    const-string v5, "0"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "1"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    const/4 v5, 0x1

    :goto_1
    return v5

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception v4

    :goto_2
    :try_start_3
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_4
    throw v5

    :catch_3
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    :catchall_1
    move-exception v5

    move-object v1, v2

    goto :goto_3

    :catch_4
    move-exception v4

    move-object v1, v2

    goto :goto_2
.end method

.method public static getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I
    .locals 4

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v0, 0x1

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    sput v0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sput v1, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    move v0, v1

    goto :goto_0

    :cond_1
    sput v2, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    move v0, v2

    goto :goto_0
.end method

.method private getTimeoutIndexFromValue(I)I
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const/4 v0, 0x5

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12c -> :sswitch_1
        0x258 -> :sswitch_2
        0x4b0 -> :sswitch_3
        0x708 -> :sswitch_4
        0xe10 -> :sswitch_5
    .end sparse-switch
.end method

.method private getTimeoutValueFromIndex(I)I
    .locals 1

    const/16 v0, 0x4b0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x12c

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x258

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x708

    goto :goto_0

    :pswitch_5
    const/16 v0, 0xe10

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getTimeoutValueFromSheredPreference(Landroid/content/Context;)I
    .locals 3

    const-string v0, "SAMSUNG_HOTSPOT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSharedPref:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "CONNECTION_TIMEOUT"

    const-string v2, "600"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private restartFocusedViewInput()V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiApDialog;->restartViewInput(Landroid/view/View;)V

    goto :goto_0
.end method

.method private restartViewInput(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private saveTempConfig()V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v2, "TMO"

    const-string v5, "TMO"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NEWCO"

    const-string v5, "TMO"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsid:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_0
    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    :goto_1
    iget v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->channel:I

    iget v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mMacaddrAcl:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :cond_1
    iget v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedMaxClient:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    iget v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempSecurityTypeIndex:I

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_2
    iput-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-void

    :cond_3
    move v2, v4

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsid:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    goto :goto_1

    :pswitch_0
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    goto :goto_2

    :pswitch_1
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_2

    :pswitch_2
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setAdapterToSpinner(Landroid/widget/Spinner;I)V
    .locals 4

    const-string v1, "WifiApDialog"

    const-string v2, "Enter to setAdapterToSpinner"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f04022a

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

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

.method private setTimeout(I)V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    const-string v2, "SAMSUNG_HOTSPOT"

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSharedPref:Landroid/content/SharedPreferences;

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CONNECTION_TIMEOUT"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private showSecurityFields()V
    .locals 6

    const v5, 0x7f1004be

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v2, 0x7f1004bd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityMsg:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityMsg:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityMsg:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f1004c0

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x90

    :goto_1
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->invalidate()V

    goto :goto_0

    :cond_3
    const/16 v1, 0x80

    goto :goto_1
.end method

.method private validate()V
    .locals 14

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v2, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    const-string v0, "content://com.sec.knox.provider2/WifiPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "isWifiApSettingUserModificationAllowed"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "isOpenWifiApAllowed"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v8, :cond_1

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "isWifiApSettingUserModificationAllowed"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v7, 0x0

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v9, :cond_3

    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    sget v0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-nez v0, :cond_2

    const-string v0, "isOpenWifiApAllowed"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v0, :cond_2

    const/4 v7, 0x0

    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_4

    if-nez v11, :cond_5

    :cond_4
    const/4 v7, 0x0

    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    :cond_6
    sget v0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-eq v0, v12, :cond_7

    sget v0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-ne v0, v13, :cond_8

    :cond_7
    if-eqz v10, :cond_a

    :cond_8
    sget v0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-eq v0, v12, :cond_9

    sget v0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-ne v0, v13, :cond_b

    :cond_9
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/16 v2, 0x8

    if-ge v0, v2, :cond_b

    :cond_a
    const/4 v7, 0x0

    :cond_b
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    if-eqz v6, :cond_c

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_c
    return-void

    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :catchall_1
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->validate()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public dismissSpinnerPopup()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->twDismissSpinnerPopup()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->twDismissSpinnerPopup()V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->maxClientSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->maxClientSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->maxClientSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->twDismissSpinnerPopup()V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->twDismissSpinnerPopup()V

    :cond_3
    return-void
.end method

.method public getCheckShowPassword()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v1, 0x7f1004c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v2, "TMO"

    const-string v5, "TMO"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NEWCO"

    const-string v5, "TMO"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsid:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    :goto_1
    iget v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->channel:I

    iget v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mMacaddrAcl:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    iget v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedMaxClient:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    sget v2, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    packed-switch v2, :pswitch_data_0

    const/4 v0, 0x0

    :cond_1
    :goto_2
    return-object v0

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsid:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    goto :goto_1

    :pswitch_0
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    goto :goto_2

    :pswitch_1
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_2

    :pswitch_2
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getOpenWarningFlag()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mUserSelectOpenSecurity:Z

    return v0
.end method

.method public getTempConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method public getTimeoutValueChangedFlag()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiApDialog;->isTimeoutValueChanged:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v1, 0x7f1004bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    :cond_1
    sget v0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    const/16 v4, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v7, 0x7f1004c0

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getCheckShowPassword()Z

    move-result v7

    if-eqz v7, :cond_1

    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getCheckShowPassword()Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x90

    :goto_2
    or-int/lit8 v4, v4, 0x1

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->invalidate()V

    goto :goto_0

    :cond_1
    move v5, v6

    goto :goto_1

    :cond_2
    const/16 v4, 0x80

    goto :goto_2

    :sswitch_1
    iget-object v7, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsid:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsid:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v5

    :goto_3
    invoke-virtual {v7, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    const-string v4, "TMO"

    const-string v7, "TMO"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "NEWCO"

    const-string v7, "TMO"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_3
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsid:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    const v7, 0x7f0a04bc

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    move v4, v6

    goto :goto_3

    :cond_5
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    const-string v7, "SAMSUNG_HOTSPOT"

    invoke-virtual {v4, v7, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mSharedPref:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v7, "HIDE_SSID_DO_NOTSHOW_AGAIN"

    invoke-interface {v4, v7, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_6

    :goto_4
    iput-boolean v6, p0, Lcom/android/settings/wifi/WifiApDialog;->hideSsidDoNotShowAgain:Z

    const-string v4, "WifiApDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hideSsidDoNotShowAgain = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/wifi/WifiApDialog;->hideSsidDoNotShowAgain:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiApDialog;->hideSsidDoNotShowAgain:Z

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->showHideSsidWarningDialog()V

    goto/16 :goto_0

    :cond_6
    move v6, v5

    goto :goto_4

    :sswitch_2
    iget-object v7, p0, Lcom/android/settings/wifi/WifiApDialog;->advanced:Landroid/widget/CheckBox;

    iget-object v8, p0, Lcom/android/settings/wifi/WifiApDialog;->advanced:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_7

    move v6, v5

    :cond_7
    invoke-virtual {v7, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v7, 0x7f1004c3

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/WifiApDialog;->advanced:Landroid/widget/CheckBox;

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_8

    :goto_5
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_8
    move v5, v4

    goto :goto_5

    :sswitch_3
    iget-object v8, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel2g:Landroid/widget/CheckBox;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel2g:Landroid/widget/CheckBox;

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_9

    move v7, v5

    :goto_6
    invoke-virtual {v8, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v7, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel2g:Landroid/widget/CheckBox;

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iget-object v8, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    if-eqz v0, :cond_a

    move v7, v5

    :goto_7
    invoke-virtual {v8, v7}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel5g:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    :goto_8
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel5g:Landroid/widget/CheckBox;

    if-nez v0, :cond_c

    :goto_9
    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    :cond_9
    move v7, v6

    goto :goto_6

    :cond_a
    move v7, v4

    goto :goto_7

    :cond_b
    move v4, v5

    goto :goto_8

    :cond_c
    move v6, v5

    goto :goto_9

    :sswitch_4
    iget-object v8, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel5g:Landroid/widget/CheckBox;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel5g:Landroid/widget/CheckBox;

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_e

    move v7, v5

    :goto_a
    invoke-virtual {v8, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v7, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel5g:Landroid/widget/CheckBox;

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iget-object v8, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    if-eqz v1, :cond_f

    move v7, v4

    :goto_b
    invoke-virtual {v8, v7}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel5g:Landroid/widget/TextView;

    if-eqz v1, :cond_d

    move v4, v5

    :cond_d
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel2g:Landroid/widget/CheckBox;

    if-nez v1, :cond_10

    :goto_c
    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gItem:[Ljava/lang/String;

    if-eqz v4, :cond_0

    const-string v4, "149"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    iget v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    iput v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mLast5gChannel:I

    goto/16 :goto_0

    :cond_e
    move v7, v6

    goto :goto_a

    :cond_f
    move v7, v5

    goto :goto_b

    :cond_10
    move v6, v5

    goto :goto_c

    :sswitch_5
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel5gPrefer:Landroid/widget/CheckBox;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel5gPrefer:Landroid/widget/CheckBox;

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_11

    move v6, v5

    :cond_11
    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel5gPrefer:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v4, "149"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    iget v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    iput v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mLast5gChannel:I

    goto/16 :goto_0

    :cond_12
    iput v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    iget v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    iput v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mLast2gChannel:I

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f1004b9 -> :sswitch_1
        0x7f1004bf -> :sswitch_0
        0x7f1004c1 -> :sswitch_2
        0x7f1004c4 -> :sswitch_5
        0x7f1004c6 -> :sswitch_3
        0x7f1004c8 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f040220

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f040221

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mCustomTitleView:Landroid/view/View;

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mCustomTitleView:Landroid/view/View;

    const v12, 0x7f1004d0

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090034

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v12, 0x7f1004bc

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Spinner;

    iput-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    const v12, 0x7f0e002b

    invoke-direct {p0, v11, v12}, Lcom/android/settings/wifi/WifiApDialog;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v12, 0x7f1004bb

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Spinner;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v11}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v11}, Lcom/android/settings/wifi/WifiApDialog;->setView(Landroid/view/View;)V

    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/android/settings/wifi/WifiApDialog;->setInverseBackgroundForced(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/android/settings/wifi/WifiApDialog;->sSalesCode:Ljava/lang/String;

    new-instance v7, Lcom/android/settings/Utils$LengthFilter;

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    invoke-direct {v7, v11}, Lcom/android/settings/Utils$LengthFilter;-><init>(Landroid/content/Context;)V

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v12, 0x7f10028d

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v12, 0x7f1004b8

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    iput-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v12, 0x7f100471

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    iput-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v12, 0x7f1004b9

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    iput-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsidHideLayout:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsidHideLayout:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v12, 0x7f1004ba

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/CheckBox;

    iput-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsid:Landroid/widget/CheckBox;

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsid:Landroid/widget/CheckBox;

    iget-object v12, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v12, v12, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v11, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsidHideLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v11, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsidHideLayout:Landroid/widget/LinearLayout;

    iget-object v12, p0, Lcom/android/settings/wifi/WifiApDialog;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v12, 0x7f1004bf

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    iput-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mPasswordShowLayout:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mPasswordShowLayout:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mPasswordShowLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v11, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v12, 0x7f1004c1

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    iput-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mAdvancedShowLayout:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mAdvancedShowLayout:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mAdvancedShowLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v11, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v12, 0x7f1004c2

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/CheckBox;

    iput-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->advanced:Landroid/widget/CheckBox;

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v12, 0x7f1004ca

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Spinner;

    iput-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    invoke-virtual {v11}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    invoke-virtual {v11, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    const v12, 0x7f0e0031

    invoke-direct {p0, v11, v12}, Lcom/android/settings/wifi/WifiApDialog;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v12, 0x7f1004c6

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    iput-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel2gLayout:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v12, 0x7f1004c8

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    iput-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel5gLayout:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v12, 0x7f1004c4

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    iput-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel5gLayoutPrefer:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v12, 0x7f1004c7

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/CheckBox;

    iput-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel2g:Landroid/widget/CheckBox;

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v12, 0x7f1004c9

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/CheckBox;

    iput-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel5g:Landroid/widget/CheckBox;

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v12, 0x7f1004c5

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/CheckBox;

    iput-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel5gPrefer:Landroid/widget/CheckBox;

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v12, 0x7f1004cb

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel5g:Landroid/widget/TextView;

    const/4 v5, 0x0

    const/4 v11, 0x1

    iput v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mNumBasedOnCountry:I

    iget v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mNumBasedOnCharger:I

    iget v12, p0, Lcom/android/settings/wifi/WifiApDialog;->mNumBasedOnCountry:I

    add-int/2addr v11, v12

    if-lez v11, :cond_3

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel2gLayout:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel2gLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v11, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel5gLayout:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel5gLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v11, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mNumBasedOnCharger:I

    iget v12, p0, Lcom/android/settings/wifi/WifiApDialog;->mNumBasedOnCountry:I

    add-int/2addr v11, v12

    new-array v11, v11, [Ljava/lang/String;

    iput-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gItem:[Ljava/lang/String;

    const/4 v6, 0x0

    :goto_0
    iget v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mNumBasedOnCharger:I

    if-ge v6, v11, :cond_1

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gItem:[Ljava/lang/String;

    iget-object v12, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gItemBasedOnCharger:[Ljava/lang/String;

    aget-object v12, v12, v6

    aput-object v12, v11, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mNumBasedOnCountry:I

    if-lez v11, :cond_2

    iget v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mNumBasedOnCharger:I

    :goto_1
    iget v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mNumBasedOnCharger:I

    iget v12, p0, Lcom/android/settings/wifi/WifiApDialog;->mNumBasedOnCountry:I

    add-int/2addr v11, v12

    if-ge v6, v11, :cond_2

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gItem:[Ljava/lang/String;

    iget-object v12, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gItemBasedOnCountry:[Ljava/lang/String;

    iget v13, p0, Lcom/android/settings/wifi/WifiApDialog;->mNumBasedOnCharger:I

    sub-int v13, v6, v13

    aget-object v12, v12, v13

    aput-object v12, v11, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    const v12, 0x1090008

    iget-object v13, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gItem:[Ljava/lang/String;

    invoke-direct {v1, v11, v12, v13}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v11, 0x1090009

    invoke-virtual {v1, v11}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    const/16 v12, 0xe

    if-ge v11, v12, :cond_a

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel2g:Landroid/widget/CheckBox;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel5g:Landroid/widget/CheckBox;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel5g:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    iget v12, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    invoke-virtual {v11, v12}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_3
    :goto_2
    const/4 v11, -0x1

    const v12, 0x7f0a03f3

    invoke-virtual {v3, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v11, v12, v13}, Lcom/android/settings/wifi/WifiApDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v11, -0x2

    const v12, 0x7f0a04ed

    invoke-virtual {v3, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v11, v12, v13}, Lcom/android/settings/wifi/WifiApDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v11, v11, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v11, :cond_b

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v11, v11, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string v12, "\tUSER#DEFINED#PWD#\n"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    const v11, 0x7f0a04c8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    :goto_3
    invoke-virtual {p0, v10}, Lcom/android/settings/wifi/WifiApDialog;->setCustomTitle(Landroid/view/View;)V

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    iget-object v12, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v12, v12, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    const-string v11, "TMO"

    const-string v12, "TMO"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "NEWCO"

    const-string v12, "TMO"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    :cond_4
    iget-object v12, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsid:Landroid/widget/CheckBox;

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v11, v11, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-nez v11, :cond_c

    const/4 v11, 0x1

    :goto_4
    invoke-virtual {v12, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_5
    sget v11, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_e

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/Spinner;->setSelection(I)V

    :goto_6
    sget v11, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_5

    sget v11, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_6

    :cond_5
    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v11, v11, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v11, :cond_f

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v11, v11, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string v12, "\tUSER#DEFINED#PWD#\n"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->requestFocus()Z

    :cond_6
    :goto_7
    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    iget-object v12, p0, Lcom/android/settings/wifi/WifiApDialog;->ssidWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    const/4 v12, 0x1

    new-array v12, v12, [Landroid/text/InputFilter;

    const/4 v13, 0x0

    aput-object v7, v12, v13

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v12, p0, Lcom/android/settings/wifi/WifiApDialog;->passwordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v4, 0x1

    sget-boolean v11, Lcom/android/settings/wifi/WifiApDialog;->mWifiShowPassword:Z

    if-nez v11, :cond_7

    const-string v11, "USC"

    sget-object v12, Lcom/android/settings/wifi/WifiApDialog;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    :cond_7
    const/4 v4, 0x1

    :cond_8
    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v12, 0x7f1004c0

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "wifi_ap_show_passwd"

    invoke-static {v12, v13, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_10

    const/4 v12, 0x1

    :goto_8
    invoke-virtual {v11, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v11, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v12, 0x7f1004cd

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Spinner;

    iput-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->maxClientSpinner:Landroid/widget/Spinner;

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->maxClientSpinner:Landroid/widget/Spinner;

    invoke-virtual {v11}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    const-string v11, "TMO"

    const-string v12, "TMO"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    const-string v11, "NEWCO"

    const-string v12, "TMO"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16

    :cond_9
    sget v2, Lcom/android/settings/wifi/WifiApDialog;->MAX_CLIENT:I

    if-lez v2, :cond_12

    new-array v8, v2, [Ljava/lang/String;

    const/4 v6, 0x0

    :goto_9
    if-ge v6, v2, :cond_11

    add-int/lit8 v11, v6, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_a
    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel2g:Landroid/widget/CheckBox;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->CheckBoxChannel5g:Landroid/widget/CheckBox;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel5g:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_b
    const v11, 0x7f0a0550

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    :cond_c
    const/4 v11, 0x0

    goto/16 :goto_4

    :cond_d
    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsid:Landroid/widget/CheckBox;

    iget-object v12, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v12, v12, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v11, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_5

    :cond_e
    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    sget v12, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    invoke-virtual {v11, v12}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_6

    :cond_f
    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v12, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v12, v12, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_10
    const/4 v12, 0x0

    goto/16 :goto_8

    :cond_11
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    const v12, 0x7f04022a

    invoke-direct {v0, v11, v12, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v11, 0x1090009

    invoke-virtual {v0, v11}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->maxClientSpinner:Landroid/widget/Spinner;

    invoke-virtual {v11, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_12
    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v11, :cond_13

    if-eqz v2, :cond_15

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v11, v11, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    if-ge v2, v11, :cond_15

    add-int/lit8 v11, v2, -0x1

    iput v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedMaxClient:I

    :cond_13
    :goto_a
    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->maxClientSpinner:Landroid/widget/Spinner;

    invoke-virtual {v11, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->maxClientSpinner:Landroid/widget/Spinner;

    iget v12, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedMaxClient:I

    invoke-virtual {v11, v12}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v12, 0x7f1004cf

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Spinner;

    iput-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    const-string v11, "TMO"

    const-string v12, "TMO"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_14

    const-string v11, "NEWCO"

    const-string v12, "TMO"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    :cond_14
    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    const v12, 0x7f0e002f

    invoke-direct {p0, v11, v12}, Lcom/android/settings/wifi/WifiApDialog;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v11, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    iget v12, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedTimeoutValue:I

    invoke-virtual {v11, v12}, Landroid/widget/Spinner;->setSelection(I)V

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/settings/wifi/WifiApDialog;->bTimeOutSpinner:Z

    :goto_b
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->showSecurityFields()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->validate()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "input_method"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/inputmethod/InputMethodManager;

    iget-object v12, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void

    :cond_15
    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v11, v11, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    add-int/lit8 v11, v11, -0x1

    iput v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedMaxClient:I

    goto :goto_a

    :cond_16
    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v11, v11, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    add-int/lit8 v11, v11, -0x1

    iput v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedMaxClient:I

    goto :goto_a

    :cond_17
    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v12, 0x7f1004ce

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v11, p0, Lcom/android/settings/wifi/WifiApDialog;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/Spinner;->setVisibility(I)V

    goto :goto_b
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

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    new-instance v5, Lcom/android/settings/wifi/WifiApDialog$5;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/WifiApDialog$5;-><init>(Lcom/android/settings/wifi/WifiApDialog;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    :sswitch_0
    sget v4, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    iput v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempSecurityTypeIndex:I

    sput p3, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    const-string v4, "TMO"

    const-string v5, "TMO"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "NEWCO"

    const-string v5, "TMO"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-nez v4, :cond_3

    const v4, 0x7f0a0555

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_3
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mUserSelectOpenSecurity:Z

    const-string v4, "VZW"

    const-string v5, "TMO"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "WifiApDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onItemSelected - mSecurityTypeIndex ?  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  mDismissIfOpen ? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mDismissIfOpen:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v4, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mDismissIfOpen:Z

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mUserSelectOpenSecurity:Z

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->saveTempConfig()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->dismiss()V

    :cond_4
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->showSecurityFields()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->validate()V

    goto/16 :goto_0

    :sswitch_1
    sget v4, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    iput v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempSecurityTypeIndex:I

    sput p3, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    const-string v4, "WifiApDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onItemSelected - mSecurityTypeIndex ?  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_9

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_5
    :goto_1
    const-string v4, "TMO"

    const-string v5, "TMO"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "NEWCO"

    const-string v5, "TMO"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-nez v4, :cond_7

    const v4, 0x7f0a0555

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_7
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mUserSelectOpenSecurity:Z

    const-string v4, "VZW"

    const-string v5, "TMO"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "WifiApDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onItemSelected - mSecurityTypeIndex ?  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  mDismissIfOpen ? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mDismissIfOpen:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v4, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-nez v4, :cond_8

    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mDismissIfOpen:Z

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mUserSelectOpenSecurity:Z

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->saveTempConfig()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->dismiss()V

    :cond_8
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->showSecurityFields()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->validate()V

    goto/16 :goto_0

    :cond_9
    const/4 v4, 0x1

    if-ne p3, v4, :cond_5

    const/4 v4, 0x2

    sput v4, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    goto :goto_1

    :sswitch_2
    iput p3, p0, Lcom/android/settings/wifi/WifiApDialog;->mLast2gChannel:I

    iput p3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    goto/16 :goto_0

    :sswitch_3
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gItem:[Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->wifiAp5gItem:[Ljava/lang/String;

    aget-object v4, v4, p3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    iget v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    iput v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mLast5gChannel:I

    goto/16 :goto_0

    :sswitch_4
    iput p3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedMaxClient:I

    goto/16 :goto_0

    :sswitch_5
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/wifi/WifiApDialog;->isTimeoutValueChanged:Z

    iput p3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedTimeoutValue:I

    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiApDialog;->bTimeOutSpinner:Z

    if-nez v4, :cond_b

    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    const/16 v4, 0x4d

    iput v4, v3, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "feature"

    const-string v5, "MHTO"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_c

    const-string v4, "extra"

    const-string v5, "NEVER TIMEOUT"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_2
    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    :cond_b
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/settings/wifi/WifiApDialog;->bTimeOutSpinner:Z

    iget v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedTimeoutValue:I

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiApDialog;->getTimeoutValueFromIndex(I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiApDialog;->setTimeout(I)V

    goto/16 :goto_0

    :cond_c
    const/4 v4, 0x1

    if-ne p3, v4, :cond_d

    const-string v4, "extra"

    const-string v5, "5 MINS"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_d
    const/4 v4, 0x2

    if-ne p3, v4, :cond_e

    const-string v4, "extra"

    const-string v5, "10 MINS"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_e
    const/4 v4, 0x3

    if-ne p3, v4, :cond_f

    const-string v4, "extra"

    const-string v5, "20 MINS"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_f
    const/4 v4, 0x4

    if-ne p3, v4, :cond_10

    const-string v4, "extra"

    const-string v5, "30 MINS"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_10
    const/4 v4, 0x5

    if-ne p3, v4, :cond_a

    const-string v4, "extra"

    const-string v5, "60 MINS"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1004bb -> :sswitch_0
        0x7f1004bc -> :sswitch_1
        0x7f1004ca -> :sswitch_2
        0x7f1004cb -> :sswitch_3
        0x7f1004cd -> :sswitch_4
        0x7f1004cf -> :sswitch_5
    .end sparse-switch
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

.method public onWindowFocusChanged(Z)V
    .locals 7

    const/4 v2, 0x0

    const-string v0, "content://com.sec.knox.provider2/WifiPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "isWifiApSettingUserModificationAllowed"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v2, 0x7f1004bb

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v2, 0x7f1004ba

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsid:Landroid/widget/CheckBox;

    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "isWifiApSettingUserModificationAllowed"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsid:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v2, 0x7f1004c0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v2, 0x7f1004c2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->validate()V

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsid:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v2, 0x7f1004c0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v2, 0x7f1004c2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public setTimeoutValueChangedFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiApDialog;->isTimeoutValueChanged:Z

    return-void
.end method

.method public show()V
    .locals 3

    const v2, 0x7f1004c3

    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v1, 0x7f1004c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showHideSsidWarningDialog()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040223

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->customView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->customView:Landroid/view/View;

    const v2, 0x7f1004a2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsidDoNotShowAgain:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsidDoNotShowAgain:Landroid/widget/CheckBox;

    new-instance v2, Lcom/android/settings/wifi/WifiApDialog$6;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiApDialog$6;-><init>(Lcom/android/settings/wifi/WifiApDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v1, 0x7f0a04c4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->customView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a07c0

    new-instance v2, Lcom/android/settings/wifi/WifiApDialog$7;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiApDialog$7;-><init>(Lcom/android/settings/wifi/WifiApDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/settings/wifi/WifiApDialog$8;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiApDialog$8;-><init>(Lcom/android/settings/wifi/WifiApDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public showSoftInput()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0
.end method
