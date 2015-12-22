.class public Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;
.super Landroid/content/BroadcastReceiver;
.source "WifiIntentReciever.java"


# static fields
.field private static isWps:Z

.field private static mCountryChina:I

.field private static mSalesCodeCHM:I

.field private static prestate:Landroid/net/NetworkInfo$DetailedState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, -0x1

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    sput-object v0, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->prestate:Landroid/net/NetworkInfo$DetailedState;

    sput v1, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->mCountryChina:I

    sput v1, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->mSalesCodeCHM:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->isWps:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private isSIMCardReady(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    const/4 v2, 0x5

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showPrompt(Landroid/content/Context;)V
    .locals 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    sget v8, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->mSalesCodeCHM:I

    if-ne v8, v6, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "airplane_mode_on"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_2

    move v2, v6

    :cond_0
    :goto_0
    if-nez v2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->isSIMCardReady(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "connectivity"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    sget-boolean v8, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->isWps:Z

    if-nez v8, :cond_1

    sget v8, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->mSalesCodeCHM:I

    if-ne v8, v6, :cond_3

    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;

    invoke-direct {v3, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v6, 0x10000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v6, 0x2000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v2, v7

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v6, "ConnHandler "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ActivityNotFoundException:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v6, "ConnHandler "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0a1265

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "ro.build.scafe.cream"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "white"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v5, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v8, 0x103012b

    invoke-direct {v5, v6, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v5, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    sget v13, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->mCountryChina:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_1

    const-string v13, "ro.csc.country_code"

    const-string v14, "NONE"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v13, "China"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "CHINA"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    :cond_0
    const/4 v13, 0x1

    sput v13, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->mCountryChina:I

    :cond_1
    :goto_0
    sget v13, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->mCountryChina:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    sget v13, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->mSalesCodeCHM:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_2

    const-string v13, "ro.csc.sales_code"

    const-string v14, "NONE"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v13, "CHM"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    const/4 v13, 0x1

    sput v13, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->mSalesCodeCHM:I

    :cond_2
    :goto_1
    const-string v13, "com.samsung.android.intent.action.WLAN_CHECK_WPS_OPERATION"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    const-string v13, "state"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    sput-boolean v13, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->isWps:Z

    sget v13, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->mSalesCodeCHM:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "wifi_cmcc_manual"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const-string v13, "wifi"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/WifiManager;

    if-eqz v11, :cond_3

    new-instance v8, Landroid/os/Message;

    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    const/16 v13, 0xf

    iput v13, v8, Landroid/os/Message;->what:I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v14, "enable"

    sget-boolean v13, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->isWps:Z

    if-nez v13, :cond_6

    const/4 v13, 0x1

    :goto_2
    invoke-virtual {v2, v14, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iput-object v2, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v13, "ConnHandler "

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "WPS set KEY_WIFI_CONNECTION_TYPE acccording to the value of isWps = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-boolean v15, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->isWps:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12, v8}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v13

    if-eqz v13, :cond_3

    const-string v13, "ConnHandler "

    const-string v14, "KEY_WIFI_CONNECTION_TYPE config store error"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_3
    return-void

    :cond_4
    const/4 v13, 0x0

    sput v13, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->mCountryChina:I

    goto/16 :goto_0

    :cond_5
    const/4 v13, 0x0

    sput v13, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->mSalesCodeCHM:I

    goto :goto_1

    :cond_6
    const/4 v13, 0x0

    goto :goto_2

    :cond_7
    const-string v13, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    const-string v13, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/NetworkInfo;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    sget-object v13, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->prestate:Landroid/net/NetworkInfo$DetailedState;

    if-eq v13, v6, :cond_3

    sget-object v13, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->prestate:Landroid/net/NetworkInfo$DetailedState;

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v13, v14, :cond_8

    sget-object v13, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->prestate:Landroid/net/NetworkInfo$DetailedState;

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne v13, v14, :cond_9

    :cond_8
    sget-object v13, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->prestate:Landroid/net/NetworkInfo$DetailedState;

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v13, v14, :cond_b

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v13

    if-eqz v13, :cond_b

    :cond_9
    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v6, v13, :cond_a

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v6, v13, :cond_b

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v13

    if-nez v13, :cond_b

    :cond_a
    const-string v13, "bssid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-direct/range {p0 .. p1}, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->showPrompt(Landroid/content/Context;)V

    sput-object v6, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->prestate:Landroid/net/NetworkInfo$DetailedState;

    goto :goto_3

    :cond_b
    sget-object v13, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->prestate:Landroid/net/NetworkInfo$DetailedState;

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v13, v14, :cond_c

    sget-object v13, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->prestate:Landroid/net/NetworkInfo$DetailedState;

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v13, v14, :cond_e

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v13

    if-nez v13, :cond_e

    :cond_c
    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v6, v13, :cond_d

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v6, v13, :cond_e

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v13

    if-eqz v13, :cond_e

    :cond_d
    const-string v13, "bssid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    sput-object v6, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->prestate:Landroid/net/NetworkInfo$DetailedState;

    goto/16 :goto_3

    :cond_e
    sput-object v6, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->prestate:Landroid/net/NetworkInfo$DetailedState;

    goto/16 :goto_3

    :cond_f
    sget v13, Lcom/android/settings/wifi/connectionhandler/WifiIntentReciever;->mSalesCodeCHM:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    const-string v13, "com.samsung.android.settings.WLAN_SSID_AVAILABLE"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "wifi_cmcc_manual"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v13, 0x2

    if-ne v4, v13, :cond_3

    new-instance v10, Landroid/content/Intent;

    const-class v13, Lcom/android/settings/wifi/connectionhandler/WifiSelectHandlerActivity;

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v13, 0x10000000

    invoke-virtual {v10, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v13, 0x2000000

    invoke-virtual {v10, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3
.end method
