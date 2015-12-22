.class public Lcom/android/settings/wifi/WifiSecSetupActivity;
.super Landroid/app/Activity;
.source "WifiSecSetupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiSecSetupActivity$WifiConnectionDialog;,
        Lcom/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog;,
        Lcom/android/settings/wifi/WifiSecSetupActivity$CheckInternet;
    }
.end annotation


# static fields
.field private static final WIFI_OFF:Z

.field private static mContext:Landroid/content/Context;

.field private static mWifiManager:Landroid/net/wifi/WifiManager;

.field public static useSprintNewSetupWizard:Z


# instance fields
.field FLAG_GOOGLE_FRP_FOR_WIFISETUPWIZARD:Z

.field FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

.field private button_transY:F

.field private handler:Landroid/os/Handler;

.field private isCurrentAPchecked:Z

.field private isFirstEnterWifiSetupWizard:I

.field private isHelpMenuShow:Z

.field private mActionBarView:Landroid/view/View;

.field private mButtonView:Landroid/view/View;

.field private mFilter:Landroid/content/IntentFilter;

.field private mIsEnableFRP:Z

.field private mIsPopupMenu:Z

.field private mIsSupportFRP:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSetupWizardCheck:I

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mSwitchBarView:Landroid/view/View;

.field private mView:Landroid/view/View;

.field private mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

.field private mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

.field private mWifiSettingsView:Landroid/view/View;

.field private menuButton:Landroid/widget/LinearLayout;

.field private nextButton:Landroid/view/View;

.field private nextButtonImage:Landroid/widget/ImageView;

.field private nextButtonText:Landroid/widget/TextView;

.field private popup:Landroid/widget/PopupMenu;

.field private previousButton:Landroid/view/View;

.field private previousButtonText:Landroid/widget/TextView;

.field private transX:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_SkipWifiActvDuringSetupWizard"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/WifiSecSetupActivity;->WIFI_OFF:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SetupWizard_Spr"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/WifiSecSetupActivity;->useSprintNewSetupWizard:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->isCurrentAPchecked:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->FLAG_GOOGLE_FRP_FOR_WIFISETUPWIZARD:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->isHelpMenuShow:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mIsSupportFRP:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mIsEnableFRP:Z

    const/high16 v0, 0x42f00000    # 120.0f

    iput v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->transX:F

    const/high16 v0, 0x43600000    # 224.0f

    iput v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->button_transY:F

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiSecSetupActivity;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiSecSetupActivity;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiSecSetupActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mSwitchBarView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiSecSetupActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->startAnimation()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiSecSetupActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings/wifi/WifiSecSetupActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mIsPopupMenu:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiSecSetupActivity;)Landroid/widget/PopupMenu;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WifiSecSetupActivity;ZZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiSecSetupActivity;->allowToGoNext(ZZI)V

    return-void
.end method

.method static synthetic access$800()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900()Landroid/net/wifi/WifiManager;
    .locals 1

    sget-object v0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private allowToGoNext(ZZI)V
    .locals 5

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ecccccd    # 0.4f

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButton:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButton:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setFocusable(Z)V

    if-eqz p2, :cond_1

    :try_start_0
    invoke-static {p3}, Lcom/android/settings/wifi/WifiSecSetupActivity$WifiConnectionDialog;->newInstance(I)Lcom/android/settings/wifi/WifiSecSetupActivity$WifiConnectionDialog;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialog"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/wifi/WifiSecSetupActivity$WifiConnectionDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "WifiSecSetupActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception on allowToGoNext: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/wifi/WifiSecSetupActivity$WifiConnectionDialog;->forget()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private static getAccountEmail(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v3, v0

    if-lez v3, :cond_0

    const/4 v3, 0x0

    aget-object v3, v0, v3

    iget-object v1, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    :cond_0
    return-object v1
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v6, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3ecccccd    # 0.4f

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiSecSetupActivity;->readReactiveLockFlag(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v4, Lcom/android/settings/wifi/WifiSecSetupActivity$CheckInternet;

    invoke-direct {v4, p0, v6}, Lcom/android/settings/wifi/WifiSecSetupActivity$CheckInternet;-><init>(Lcom/android/settings/wifi/WifiSecSetupActivity;Lcom/android/settings/wifi/WifiSecSetupActivity$1;)V

    new-array v5, v8, [Landroid/net/NetworkInfo;

    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    aput-object v3, v5, v7

    invoke-virtual {v4, v5}, Lcom/android/settings/wifi/WifiSecSetupActivity$CheckInternet;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v3, Lcom/android/settings/wifi/WifiSecSetupActivity$CheckInternet;

    invoke-direct {v3, p0, v6}, Lcom/android/settings/wifi/WifiSecSetupActivity$CheckInternet;-><init>(Lcom/android/settings/wifi/WifiSecSetupActivity;Lcom/android/settings/wifi/WifiSecSetupActivity$1;)V

    new-array v4, v7, [Landroid/net/NetworkInfo;

    invoke-virtual {v3, v4}, Lcom/android/settings/wifi/WifiSecSetupActivity$CheckInternet;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_2
    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->FLAG_GOOGLE_FRP_FOR_WIFISETUPWIZARD:Z

    if-eqz v3, :cond_0

    :cond_3
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    const/4 v2, 0x0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Lcom/android/settings/wifi/WifiSecSetupActivity;->isNetworkConnected()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    const-string v3, "WifiSecSetupActivity"

    const-string v6, "handleEvent() : wifi state changed, isConn set true !!!"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :cond_5
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz v3, :cond_6

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz v2, :cond_7

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_6
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    if-eqz v2, :cond_8

    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setAlpha(F)V

    if-eqz v2, :cond_9

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButton:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setClickable(Z)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButton:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0

    :cond_7
    move v3, v5

    goto :goto_1

    :cond_8
    move v4, v5

    goto :goto_2

    :cond_9
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButton:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setClickable(Z)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButton:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0

    :cond_a
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/settings/wifi/WifiSecSetupActivity;->isNetworkConnected()Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "WifiSecSetupActivity"

    const-string v6, "handleEvent() : connectivity state changed, isConn set true !!!"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :cond_b
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz v3, :cond_c

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz v2, :cond_d

    move v3, v4

    :goto_3
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_c
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    if-eqz v2, :cond_e

    :goto_4
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setAlpha(F)V

    if-eqz v2, :cond_f

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButton:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setClickable(Z)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButton:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setFocusable(Z)V

    goto/16 :goto_0

    :cond_d
    move v3, v5

    goto :goto_3

    :cond_e
    move v4, v5

    goto :goto_4

    :cond_f
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButton:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setClickable(Z)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButton:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setFocusable(Z)V

    goto/16 :goto_0
.end method

.method private initialize()V
    .locals 4

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v2, 0x7f10049f

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setId(I)V

    new-instance v2, Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {v2}, Lcom/android/settings/wifi/WifiSettings;-><init>()V

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/WifiSettings;->setSwitchBarInSetupWizard(Lcom/android/settings/widget/SwitchBar;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public static isNetworkConnected()Z
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x1

    sget-object v6, Lcom/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    if-nez v6, :cond_1

    const-string v5, "WifiSecSetupActivity"

    const-string v6, "isNetworkConnected() : mContext is null !!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v4

    :cond_1
    sget-object v6, Lcom/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6

    if-eqz v6, :cond_3

    move v4, v5

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    goto :goto_0
.end method

.method public static isSupportGoogleFRP(Landroid/content/Context;)Z
    .locals 6

    const/4 v2, 0x0

    new-instance v1, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "WifiSecSetupActivity"

    const-string v4, "isSupportGoogleFRP : service is not Connected!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getServiceSupport()I

    move-result v0

    const-string v3, "WifiSecSetupActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSupportGoogleFRP getServiceSupport : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    const-string v3, "WifiSecSetupActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSupportGoogleFRP : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    const/4 v2, 0x1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static readGoogleFRPFlag(Landroid/content/Context;)Z
    .locals 7

    const/4 v6, 0x2

    const/4 v2, 0x0

    new-instance v1, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "WifiSecSetupActivity"

    const-string v4, "readGoogleFRPFlag : service is not Connected"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    invoke-virtual {v1, v6}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getFlag(I)I

    move-result v0

    const-string v3, "WifiSecSetupActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readGoogleFRPFlag getFlag result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v6, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    const-string v3, "WifiSecSetupActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readGoogleFRPFlag : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    goto :goto_0
.end method

.method private static readReactiveLockFlag(Landroid/content/Context;)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x2

    const/4 v3, 0x0

    new-instance v2, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-direct {v2, p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->isConnected()Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "WifiSecSetupActivity"

    const-string v6, "readReactiveLockFlag : service is not Connected"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v4

    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getServiceSupport()I

    move-result v1

    const-string v5, "WifiSecSetupActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readReactiveLockFlag : getServiceSupport is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v1, v8, :cond_3

    const-string v4, "WifiSecSetupActivity"

    const-string v5, "readReactiveLockFlag : feature supported"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v8}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getFlag(I)I

    move-result v0

    const-string v4, "WifiSecSetupActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readReactiveLockFlag FRP_FLAG result : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v9, :cond_1

    if-ne v0, v8, :cond_2

    :cond_1
    const-string v4, "com.google"

    invoke-static {p0, v4}, Lcom/android/settings/wifi/WifiSecSetupActivity;->getAccountEmail(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    const/4 v3, 0x1

    :cond_2
    :goto_1
    const-string v4, "WifiSecSetupActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readReactiveLockFlag : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    goto :goto_0

    :cond_3
    if-ne v1, v9, :cond_5

    invoke-virtual {v2, v4}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getFlag(I)I

    move-result v0

    const-string v4, "WifiSecSetupActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readReactiveLockFlag REACTIVATION_FLAG result : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v9, :cond_4

    if-ne v0, v8, :cond_2

    :cond_4
    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    const-string v5, "WifiSecSetupActivity"

    const-string v6, "readReactiveLockFlag : REACTIVATION NOT SUPPORT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private resetAnimation()V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "WifiSecSetupActivity"

    const-string v2, "resetAnimation"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mSwitchBarView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mWifiSettingsView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mActionBarView:Landroid/view/View;

    iget v2, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->transX:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mActionBarView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mButtonView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mButtonView:Landroid/view/View;

    iget v2, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->button_transY:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mSwitchBarView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/WifiSecSetupActivity$2;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiSecSetupActivity$2;-><init>(Lcom/android/settings/wifi/WifiSecSetupActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private startAnimation()V
    .locals 13

    const/16 v12, 0x46

    const-wide/16 v10, 0x294

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    const-string v0, "WifiSecSetupActivity"

    const-string v1, "startAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mSwitchBarView:Landroid/view/View;

    const-wide/16 v6, 0x1f4

    const/16 v8, 0x21

    invoke-static/range {v1 .. v8}, Lcom/android/settings/wifi/VI/AnimationHelper;->fadeAni(Landroid/view/View;FFJJI)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mWifiSettingsView:Landroid/view/View;

    const-wide/16 v6, 0x1f4

    const/16 v8, 0x21

    invoke-static/range {v1 .. v8}, Lcom/android/settings/wifi/VI/AnimationHelper;->fadeAni(Landroid/view/View;FFJJI)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mActionBarView:Landroid/view/View;

    invoke-static {v0, v4, v5, v10, v11}, Lcom/android/settings/wifi/VI/AnimationHelper;->fromRight(Landroid/view/View;JJ)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mActionBarView:Landroid/view/View;

    move-wide v6, v10

    move v8, v12

    invoke-static/range {v1 .. v8}, Lcom/android/settings/wifi/VI/AnimationHelper;->fadeAni(Landroid/view/View;FFJJI)V

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mButtonView:Landroid/view/View;

    move-wide v8, v4

    invoke-static/range {v7 .. v12}, Lcom/android/settings/wifi/VI/AnimationHelper;->fromBottom(Landroid/view/View;JJI)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mButtonView:Landroid/view/View;

    move-wide v6, v10

    move v8, v12

    invoke-static/range {v1 .. v8}, Lcom/android/settings/wifi/VI/AnimationHelper;->fadeAni(Landroid/view/View;FFJJI)V

    return-void
.end method

.method private updateLayoutMargin(Landroid/content/res/Configuration;)V
    .locals 13

    const/4 v12, 0x5

    const/4 v11, 0x1

    const/4 v10, 0x4

    const v9, 0x3ecccccd    # 0.4f

    const/4 v8, 0x0

    const v5, 0x7f040256

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiSecSetupActivity;->setContentView(I)V

    const v5, 0x7f10055c

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0181

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0182

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v5, 0x7f100125

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/settings/widget/SwitchBar;

    iput-object v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v5, :cond_0

    new-instance v5, Lcom/android/settings/wifi/WifiEnabler;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-direct {v5, p0, v6}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;)V

    iput-object v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v5, v1, v2}, Lcom/android/settings/widget/SwitchBar;->setSwitchBarMargin(II)V

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v5, v11}, Lcom/android/settings/widget/SwitchBar;->setProgressBarVisible(Z)V

    :cond_0
    const v5, 0x7f10058c

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->menuButton:Landroid/widget/LinearLayout;

    invoke-static {p0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Landroid/widget/PopupMenu;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->menuButton:Landroid/widget/LinearLayout;

    invoke-direct {v5, p0, v6, v12}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    :goto_0
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v5}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v5

    const/4 v6, 0x2

    const v7, 0x7f0a0352

    invoke-interface {v5, v8, v6, v8, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v5}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v5

    const v6, 0x7f0a0359

    invoke-interface {v5, v8, v10, v8, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v5}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v5

    const v6, 0x7f0a035b

    invoke-interface {v5, v8, v12, v8, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v5}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v5

    const/4 v6, 0x7

    const v7, 0x7f0a04cf

    invoke-interface {v5, v8, v6, v8, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v5}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v5

    const v6, 0x7f0a035e

    invoke-interface {v5, v8, v11, v8, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v5, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    new-instance v6, Lcom/android/settings/wifi/WifiSecSetupActivity$3;

    invoke-direct {v6, p0}, Lcom/android/settings/wifi/WifiSecSetupActivity$3;-><init>(Lcom/android/settings/wifi/WifiSecSetupActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->menuButton:Landroid/widget/LinearLayout;

    new-instance v6, Lcom/android/settings/wifi/WifiSecSetupActivity$4;

    invoke-direct {v6, p0}, Lcom/android/settings/wifi/WifiSecSetupActivity$4;-><init>(Lcom/android/settings/wifi/WifiSecSetupActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f100125

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mSwitchBarView:Landroid/view/View;

    const v5, 0x7f10055d

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mWifiSettingsView:Landroid/view/View;

    const v5, 0x7f10055e

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mButtonView:Landroid/view/View;

    const v5, 0x7f10055f

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->previousButton:Landroid/view/View;

    const v5, 0x7f100560

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->previousButtonText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->previousButtonText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0e71

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->previousButtonText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0900c0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const v5, 0x7f1000a2

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButton:Landroid/view/View;

    const v5, 0x7f100561

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0e70

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0900c0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0e70

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a08bb

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    const v5, 0x7f100562

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->previousButton:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButton:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f100562

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    new-instance v0, Landroid/graphics/LightingColorFilter;

    const/high16 v5, -0x1000000

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0900c1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v0, v5, v6}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->initialize()V

    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->previousButtonText:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->previousButton:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setClickable(Z)V

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->previousButton:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setFocusable(Z)V

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_1
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_2
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButton:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setClickable(Z)V

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButton:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setFocusable(Z)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    new-instance v5, Landroid/widget/PopupMenu;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->menuButton:Landroid/widget/LinearLayout;

    const v7, 0x800005

    invoke-direct {v5, p0, v6, v7}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    goto/16 :goto_0

    :cond_5
    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->FLAG_GOOGLE_FRP_FOR_WIFISETUPWIZARD:Z

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->previousButtonText:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->previousButton:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setClickable(Z)V

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->previousButton:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setFocusable(Z)V

    invoke-static {}, Lcom/android/settings/wifi/WifiSecSetupActivity;->isNetworkConnected()Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_6
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_7
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButton:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setClickable(Z)V

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->nextButton:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_1

    :cond_8
    new-instance v5, Lcom/android/settings/wifi/WifiSecSetupActivity$CheckInternet;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/settings/wifi/WifiSecSetupActivity$CheckInternet;-><init>(Lcom/android/settings/wifi/WifiSecSetupActivity;Lcom/android/settings/wifi/WifiSecSetupActivity$1;)V

    new-array v6, v8, [Landroid/net/NetworkInfo;

    invoke-virtual {v5, v6}, Lcom/android/settings/wifi/WifiSecSetupActivity$CheckInternet;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    :cond_9
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->previousButtonText:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->previousButton:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setClickable(Z)V

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->previousButton:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setFocusable(Z)V

    sget-object v5, Lcom/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/wifi/WifiSecSetupActivity;->readReactiveLockFlag(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/settings/wifi/WifiSecSetupActivity;->isNetworkConnected()Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Lcom/android/settings/wifi/WifiSecSetupActivity$CheckInternet;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/settings/wifi/WifiSecSetupActivity$CheckInternet;-><init>(Lcom/android/settings/wifi/WifiSecSetupActivity;Lcom/android/settings/wifi/WifiSecSetupActivity$1;)V

    new-array v6, v8, [Landroid/net/NetworkInfo;

    invoke-virtual {v5, v6}, Lcom/android/settings/wifi/WifiSecSetupActivity$CheckInternet;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSecSetupActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->finish()V

    goto :goto_0

    :sswitch_1
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mIsSupportFRP:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/settings/wifi/WifiSecSetupActivity;->isNetworkConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WifiSecSetupActivity"

    const-string v2, "next_button : isNetworkConnected() is true, finish()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSecSetupActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->finish()V

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mIsEnableFRP:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "WifiSecSetupActivity"

    const-string v2, "next_button :  isNetworkConnected() is false, show WifiSkipDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a040c

    const v1, 0x7f0a040c

    invoke-static {v1}, Lcom/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog;->newInstance(I)Lcom/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialog"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "WifiSecSetupActivity"

    const-string v2, "next_button :  mIsEnableFRP is true, but not connected!, finish()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSecSetupActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->finish()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSecSetupActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->finish()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1000a2 -> :sswitch_1
        0x7f10055f -> :sswitch_0
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 v0, 0x0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, -0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    sput-object v3, Lcom/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "user_setup_complete"

    invoke-static {v3, v4, v7, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mSetupWizardCheck:I

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "first_enter_wifisetupwizard"

    invoke-static {v3, v4, v6, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->isFirstEnterWifiSetupWizard:I

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "extra_samsungaccount_for_wifisetupwizard"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-boolean v6, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

    :cond_0
    sget-object v3, Lcom/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiSecSetupActivity;->isSupportGoogleFRP(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mIsSupportFRP:Z

    sget-object v3, Lcom/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiSecSetupActivity;->readGoogleFRPFlag(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mIsEnableFRP:Z

    const-string v3, "WifiSecSetupActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate : mIsSupportFRP =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mIsSupportFRP:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mIsEnableFRP = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mIsEnableFRP:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", useSprintNewSetupWizard = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/settings/wifi/WifiSecSetupActivity;->useSprintNewSetupWizard:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mIsSupportFRP:Z

    if-eqz v3, :cond_4

    const-string v3, "is_network_required"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "WifiSecSetupActivity"

    const-string v4, "onCreate : FLAG_GOOGLE_FRP_FOR_WIFISETUPWIZARD set true !!! "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->FLAG_GOOGLE_FRP_FOR_WIFISETUPWIZARD:Z

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/4 v3, -0x1

    const/16 v4, 0x10

    invoke-direct {v2, v3, v8, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04025f

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    const v3, 0x7f10058a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mActionBarView:Landroid/view/View;

    :cond_2
    iput-boolean v7, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mIsPopupMenu:Z

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiSecSetupActivity;->updateLayoutMargin(Landroid/content/res/Configuration;)V

    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSecSetupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    sput-object v3, Lcom/android/settings/wifi/WifiSecSetupActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v3, "WifiSecSetupActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isFirstEnterWifiSetupWizard : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->isFirstEnterWifiSetupWizard:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mSetupWizardCheck : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mSetupWizardCheck:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->isFirstEnterWifiSetupWizard:I

    if-ne v3, v6, :cond_3

    iget v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mSetupWizardCheck:I

    if-nez v3, :cond_3

    const-string v3, "ON"

    const-string v4, "OFF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-boolean v3, Lcom/android/settings/wifi/WifiSecSetupActivity;->WIFI_OFF:Z

    if-nez v3, :cond_5

    sget-object v3, Lcom/android/settings/wifi/WifiSecSetupActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "first_enter_wifisetupwizard"

    invoke-static {v3, v4, v7, v8}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_3
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mFilter:Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mFilter:Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mFilter:Landroid/content/IntentFilter;

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v3, Lcom/android/settings/wifi/WifiSecSetupActivity$1;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiSecSetupActivity$1;-><init>(Lcom/android/settings/wifi/WifiSecSetupActivity;)V

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->resetAnimation()V

    return-void

    :cond_4
    const-string v3, "WifiSecSetupActivity"

    const-string v4, "onCreate : not support FRP !!! "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    sget-object v3, Lcom/android/settings/wifi/WifiSecSetupActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    if-eqz v2, :cond_0

    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSecSetupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const/4 v3, 0x5

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    return v4
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const-string v0, "WifiSecSetupActivity"

    const-string v1, "onAddNetworkPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings;->onAddNetworkPressed()V

    goto :goto_0

    :pswitch_2
    const-string v0, "WifiSecSetupActivity"

    const-string v1, "onWpsPushBtnPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings;->onWpsPushBtnPressed()V

    goto :goto_0

    :pswitch_3
    const-string v0, "WifiSecSetupActivity"

    const-string v1, "onWpsPinBtnPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings;->onWpsPinBtnPressed()V

    goto :goto_0

    :pswitch_4
    const-string v0, "WifiSecSetupActivity"

    const-string v1, "onAdvancedMenuPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings;->onAdvancedMenuPressed()V

    goto :goto_0

    :pswitch_5
    const-string v0, "WifiSecSetupActivity"

    const-string v1, "onHelpMenuPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_6
    const-string v0, "WifiSecSetupActivity"

    const-string v1, "onSmartNetworkSwitchPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings;->onSmartNetworkSwitchPressed()V

    goto :goto_0

    :pswitch_7
    const-string v0, "WifiSecSetupActivity"

    const-string v1, "onSleepPolicyPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings;->onSleepPolicyPressed()V

    goto :goto_0

    :pswitch_8
    const-string v0, "WifiSecSetupActivity"

    const-string v1, "onAlwaysAllowScanningPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings;->onAlwaysAllowScanningPressed()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0, p0}, Lcom/android/settings/wifi/WifiEnabler;->resume(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/WifiSecSetupActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
