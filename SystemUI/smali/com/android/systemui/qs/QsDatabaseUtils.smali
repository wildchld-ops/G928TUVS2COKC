.class public Lcom/android/systemui/qs/QsDatabaseUtils;
.super Ljava/lang/Object;
.source "QsDatabaseUtils.java"


# static fields
.field private static final DB_LIST_RESET:Ljava/lang/String; = "notification_panel_active_app_list_for_reset"

.field private static final DB_LIST_UPDATE:Ljava/lang/String; = "notification_panel_active_app_list"

.field private static final DB_NUMBER_OF_APPS:Ljava/lang/String; = "notification_panel_active_number_of_apps"

.field private static final RETAIL_MODE:Ljava/lang/String; = "kr.co.rightbrain.RetailMode.TR"

.field private static final RETAIL_MODE_TAG:Ljava/lang/String; = "PersonalMode"

.field private static final SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field private static final TAG:Ljava/lang/String; = "QsDatabaseUtils"

.field private static final TMO_WFC_QUICK_SETTING_TAG:Ljava/lang/String; = "WifiCalling"

.field private static final WFC_APP_PACKAGE_NAME:Ljava/lang/String; = "com.oem.smartwifisupport"

.field private static final WFC_QUICK_SETTING_TAG:Ljava/lang/String; = "VoWiFi"

.field private static final WIFI_CALLING_ACTION:Ljava/lang/String; = "com.oem.smartwifisupport.WIFI_CALLING"


# instance fields
.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mBroadcastReceiverSimChange:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/qs/QsDatabaseUtils$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QsDatabaseUtils$1;-><init>(Lcom/android/systemui/qs/QsDatabaseUtils;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QsDatabaseUtils;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/qs/QsDatabaseUtils$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QsDatabaseUtils$4;-><init>(Lcom/android/systemui/qs/QsDatabaseUtils;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QsDatabaseUtils;->mBroadcastReceiverSimChange:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/qs/QsDatabaseUtils;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/QsDatabaseUtils;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QsDatabaseUtils;->handleVoWifi()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QsDatabaseUtils;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QsDatabaseUtils;->handleRetailMode()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QsDatabaseUtils;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QsDatabaseUtils;->updateVoWifiIfNeeded()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QsDatabaseUtils;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QsDatabaseUtils;->updateRetailMode()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/QsDatabaseUtils;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QsDatabaseUtils;->updateWfcIcon()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/QsDatabaseUtils;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QsDatabaseUtils;->addApp(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/QsDatabaseUtils;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QsDatabaseUtils;->updateWfcIconIfNeeded()V

    return-void
.end method

.method private addApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v4, -0x2

    iget-object v2, p0, Lcom/android/systemui/qs/QsDatabaseUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0, v4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private getCountryCode()Ljava/lang/String;
    .locals 2

    const-string v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDpiOfDevice(Landroid/content/Context;)I
    .locals 7

    const-string v6, "window"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v6, 0x2

    if-ne v4, v6, :cond_1

    :cond_0
    iget v6, v3, Landroid/graphics/Point;->y:I

    mul-int/lit16 v6, v6, 0xa0

    div-int v1, v6, v0

    :goto_0
    return v1

    :cond_1
    iget v6, v3, Landroid/graphics/Point;->x:I

    mul-int/lit16 v6, v6, 0xa0

    div-int v1, v6, v0

    goto :goto_0
.end method

.method private getQuickSettingsList(Landroid/content/Context;)Ljava/lang/String;
    .locals 14

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v12, "ro.csc.sales_code"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    const-string v12, "ril.sales_code"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :cond_0
    const-string v12, "ro.product.name"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v12, "ro.build.characteristics"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const-string v12, "tablet"

    invoke-virtual {v1, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    :cond_1
    const-string v12, "user"

    invoke-virtual {p1, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    const/4 v4, 0x0

    if-eqz v6, :cond_2

    invoke-virtual {v6, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v4

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0900e8

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0900f3

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Setting_DefQuickPanelOrder"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_6

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Setting_DefQuickPanelOrder"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_0
    if-nez v0, :cond_1c

    const/4 v9, 0x0

    :cond_5
    return-object v9

    :cond_6
    const-string v12, "ctc"

    invoke-virtual {v7, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0900ed

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    const-string v12, "CHN"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    const-string v12, "CHM"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    const-string v12, "CHU"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    const-string v12, "CHC"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    :cond_8
    if-nez v3, :cond_9

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0900ee

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0900f8

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_a
    const-string v12, "vzw"

    invoke-virtual {v7, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c

    if-nez v3, :cond_b

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0900e9

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_b
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0900f4

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_c
    const-string v12, "ATT"

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_d

    const-string v12, "AIO"

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    :cond_d
    if-nez v3, :cond_e

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0900ea

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0900f6

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_f
    const-string v12, "tmo"

    invoke-virtual {v7, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_10

    const-string v12, "TMB"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    :cond_10
    if-nez v3, :cond_11

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0900eb

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0900f5

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_12
    const-string v12, "spr"

    invoke-virtual {v7, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_13

    const-string v12, "kltesprsports"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_15

    :cond_13
    if-nez v3, :cond_14

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0900ec

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_14
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0900f7

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_15
    const-string v12, "TGY"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_16

    const-string v12, "BRI"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_18

    :cond_16
    if-nez v3, :cond_17

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0900ef

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0900f9

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_18
    const-string v12, "JP"

    invoke-direct {p0}, Lcom/android/systemui/qs/QsDatabaseUtils;->getCountryCode()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_19

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0900f2

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_19
    const-string v12, "KOREA"

    invoke-direct {p0}, Lcom/android/systemui/qs/QsDatabaseUtils;->getCountryCode()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1a

    sget-boolean v12, Lcom/android/systemui/statusbar/Feature;->mPublicSafetyProject:Z

    if-eqz v12, :cond_4

    :cond_1a
    if-nez v3, :cond_4

    sget-boolean v12, Lcom/android/systemui/statusbar/Feature;->mPublicSafetyProject:Z

    if-eqz v12, :cond_1b

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0900f1

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1b
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0900f0

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1c
    const-string v9, ""

    const/4 v2, 0x0

    :goto_1
    array-length v12, v0

    if-ge v2, v12, :cond_5

    aget-object v8, v0, v2

    const-string v12, "Wifi"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1e

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const-string v13, "android.hardware.wifi"

    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1f

    :cond_1d
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1e
    const-string v12, "Location"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_20

    :cond_1f
    :goto_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_20
    const-string v12, "Ebook"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_21

    if-nez v3, :cond_1f

    goto :goto_2

    :cond_21
    const-string v12, "AdaptiveDisplay"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_22

    sget-boolean v12, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v12, :cond_1d

    if-eqz v3, :cond_1d

    goto :goto_3

    :cond_22
    const-string v12, "SilentMode"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1f

    const-string v12, "AutoRotate"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1f

    const-string v12, "Bluetooth"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_23

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const-string v13, "android.hardware.bluetooth"

    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1f

    goto :goto_2

    :cond_23
    const-string v12, "MobileData"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_24

    const-string v12, "TMB"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1d

    const-string v12, "ATT"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1d

    const-string v12, "SPR"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1d

    const-string v12, "BMC"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1d

    const-string v12, "BWA"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1d

    const-string v12, "VMC"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1d

    const-string v12, "RWC"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1d

    const-string v12, "FMC"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1d

    const-string v12, "MTA"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1d

    const-string v12, "TLS"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1d

    const-string v12, "KDO"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1d

    const-string v12, "SPC"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1d

    const-string v12, "ESK"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1d

    const-string v12, "GLW"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1d

    const-string v12, "MCT"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1d

    const-string v12, "VTR"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1d

    const-string v12, "BST"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1d

    const-string v12, "VMU"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1d

    const-string v12, "XAS"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1d

    const-string v12, "AIO"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1d

    const-string v12, "PMB"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1d

    const-string v12, "PAP"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1d

    const-string v12, "FOP"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1d

    const-string v12, "XAC"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1d

    const-string v12, "SOL"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1d

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QsDatabaseUtils;->isShopdemoEnable(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_1d

    if-eqz v5, :cond_1f

    goto/16 :goto_2

    :cond_24
    const-string v12, "VoLte"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_26

    const-string v12, "TGY"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_25

    const-string v12, "BRI"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_25

    const-string v12, "THL"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1d

    :cond_25
    invoke-direct {p0}, Lcom/android/systemui/qs/QsDatabaseUtils;->isSupportVoLte()Z

    move-result v12

    if-eqz v12, :cond_1d

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1f

    goto/16 :goto_2

    :cond_26
    const-string v12, "PowerSaving"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_27

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v12

    const-string v13, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-virtual {v12, v13}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1d

    goto/16 :goto_3

    :cond_27
    const-string v12, "AllShareCast"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_28

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const-string v13, "com.sec.feature.wfd_support"

    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1f

    goto/16 :goto_2

    :cond_28
    const-string v12, "MultiWindow"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_29

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const-string v13, "com.sec.feature.multiwindow"

    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1f

    goto/16 :goto_2

    :cond_29
    const-string v12, "WiFiHotspot"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2a

    const-string v12, "ATT"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1d

    const-string v12, "SPR"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1d

    const-string v12, "TMB"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1d

    const-string v12, "USC"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1d

    const-string v12, "CRI"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1d

    const-string v12, "VMU"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1d

    const-string v12, "BST"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1d

    const-string v12, "XAS"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1d

    const-string v12, "TFN"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1d

    const-string v12, "XAR"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1d

    const-string v12, "AIO"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1d

    const-string v12, "PAP"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1d

    const-string v12, "FOP"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1d

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QsDatabaseUtils;->isShopdemoEnable(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_1d

    const-string v12, "SBM"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1d

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Common_UseChameleon"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1d

    if-eqz v5, :cond_1f

    goto/16 :goto_2

    :cond_2a
    const-string v12, "SBeam"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2b

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const-string v13, "android.hardware.nfc"

    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1d

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QsDatabaseUtils;->isSBeamSupported(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_1f

    goto/16 :goto_2

    :cond_2b
    const-string v12, "Nfc"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2c

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const-string v13, "android.hardware.nfc"

    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1d

    if-eqz v3, :cond_1f

    goto/16 :goto_2

    :cond_2c
    const-string v12, "AirView"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2d

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v12

    const-string v13, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-virtual {v12, v13}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1f

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v12

    const-string v13, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-virtual {v12, v13}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1f

    goto/16 :goto_2

    :cond_2d
    const-string v12, "AirGesture"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2e

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v12

    const-string v13, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-virtual {v12, v13}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1d

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v12

    const-string v13, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-virtual {v12, v13}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1f

    goto/16 :goto_2

    :cond_2e
    const-string v12, "DrivingMode"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2f

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v12

    const-string v13, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DRIVING_MODE"

    invoke-virtual {v12, v13}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1d

    goto/16 :goto_3

    :cond_2f
    const-string v12, "SmartStay"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1f

    const-string v12, "SmartPause"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1d

    const-string v12, "SmartScroll"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1d

    const-string v12, "Sync"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_30

    if-eqz v4, :cond_1f

    goto/16 :goto_2

    :cond_30
    const-string v12, "AirplaneMode"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_31

    if-eqz v4, :cond_1f

    const-string v12, "QsDatabaseUtils"

    const-string v13, "AirplaneMode removed by mIsRestricted"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_31
    const-string v12, "SmartNetwork"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_32

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v12

    const-string v13, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-virtual {v12, v13}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1f

    goto/16 :goto_2

    :cond_32
    const-string v12, "PersonalMode"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_33

    if-nez v5, :cond_1d

    const-string v12, "PAP"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1d

    const-string v12, "FOP"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1d

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QsDatabaseUtils;->isShopdemoEnable(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_1d

    invoke-static {p1}, Lcom/android/systemui/qs/QsDatabaseUtils;->isAfwProfile(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_1f

    goto/16 :goto_2

    :cond_33
    const-string v12, "CarMode"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_34

    const-string v12, "com.sec.android.automotive.drivelink"

    invoke-direct {p0, v12, p1}, Lcom/android/systemui/qs/QsDatabaseUtils;->hasApplication(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_1f

    const-string v12, "com.sec.android.app.automotive.carmode"

    invoke-direct {p0, v12, p1}, Lcom/android/systemui/qs/QsDatabaseUtils;->hasApplication(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_1f

    goto/16 :goto_2

    :cond_34
    const-string v12, "DefaultData"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_35

    const-string v12, "DCGG"

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1f

    const-string v12, "DCGS"

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1f

    const-string v12, "DCGGS"

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1f

    goto/16 :goto_2

    :cond_35
    const-string v12, "WifiCalling"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_37

    sget-boolean v12, Lcom/android/systemui/statusbar/Feature;->mShowWifiCallingTileForORANGE:Z

    if-nez v12, :cond_36

    sget-boolean v12, Lcom/android/systemui/statusbar/Feature;->mShowWifiCallingTileForTMO:Z

    if-eqz v12, :cond_1d

    :cond_36
    if-eqz v5, :cond_1f

    goto/16 :goto_2

    :cond_37
    const-string v12, "VoWiFi"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_38

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1f

    goto/16 :goto_2

    :cond_38
    const-string v12, "NetworkBooster"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_39

    if-nez v5, :cond_1d

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_RIL_DisableSmartBonding"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1d

    invoke-direct {p0, v11}, Lcom/android/systemui/qs/QsDatabaseUtils;->isTFGDisableSmartBonding(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1d

    const-string v12, "kltevzw"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1f

    goto/16 :goto_2

    :cond_39
    const-string v12, "Toolbox"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1d

    const-string v12, "CameraAccess"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1d

    const-string v12, "SFinder"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3b

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const-string v13, "com.sec.feature.findo"

    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1d

    const-string v12, "VZW"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3a

    const-string v12, "ATT"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3a

    const-string v12, "AIO"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3a

    const-string v12, "ACG"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1d

    :cond_3a
    if-nez v4, :cond_1d

    if-eqz v5, :cond_1f

    goto/16 :goto_2

    :cond_3b
    const-string v12, "QuickConnect"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3d

    const-string v12, "com.samsung.android.sconnect"

    invoke-direct {p0, v12, p1}, Lcom/android/systemui/qs/QsDatabaseUtils;->hasApplication(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_1d

    const-string v12, "VZW"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3c

    const-string v12, "ATT"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3c

    const-string v12, "AIO"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1d

    :cond_3c
    if-nez v4, :cond_1d

    if-eqz v5, :cond_1f

    goto/16 :goto_2

    :cond_3d
    const-string v12, "TouchSensitivity"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3e

    sget-boolean v12, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v12, :cond_1d

    const-string v12, "marinelte"

    invoke-virtual {v7, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1f

    sget-boolean v12, Lcom/android/systemui/statusbar/Feature;->mPublicSafetyProject:Z

    if-nez v12, :cond_1f

    goto/16 :goto_2

    :cond_3e
    const-string v12, "UltraPowerSaving"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3f

    if-eqz v5, :cond_1f

    goto/16 :goto_2

    :cond_3f
    const-string v12, "FlashLight"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_40

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const-string v13, "android.hardware.camera.flash"

    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1f

    goto/16 :goto_2

    :cond_40
    const-string v12, "SideKey"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_41

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const-string v13, "com.sec.feature.floating_side_softkey"

    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1f

    goto/16 :goto_2

    :cond_41
    const-string v12, "Apn"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1f

    const-string v12, "TorchLight"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_42

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const-string v13, "android.hardware.camera.flash"

    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1f

    goto/16 :goto_2

    :cond_42
    const-string v12, "FloatingMessage"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_43

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Common_EnableAirMessage"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1f

    goto/16 :goto_2

    :cond_43
    const-string v12, "DormantMode"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1f

    goto/16 :goto_3
.end method

.method private handleRetailMode()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/qs/QsDatabaseUtils$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QsDatabaseUtils$3;-><init>(Lcom/android/systemui/qs/QsDatabaseUtils;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private handleVoWifi()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/qs/QsDatabaseUtils$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QsDatabaseUtils$2;-><init>(Lcom/android/systemui/qs/QsDatabaseUtils;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private hasApplication(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v2

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isAfwProfile(Landroid/content/Context;)Z
    .locals 8

    const-string v6, "device_policy"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    const-string v6, "user"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :cond_2
    if-eqz v3, :cond_3

    const-string v6, "QsDatabaseUtils"

    const-string v7, "isAfwProfile() true"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v3
.end method

.method private isSBeamSupported(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.android.directshare"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private isShopdemoEnable(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "shopdemo"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isSupportVoLte()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/QsDatabaseUtils;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->isServiceAvailable(ILandroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isTFGDisableSmartBonding(Ljava/lang/String;)Z
    .locals 9

    const/4 v6, 0x0

    const-string v7, "TFG"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    const-string v7, "ril.product_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v1, "/system/etc/smart_bonding_not_supported"

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    const-string v8, "/system/etc/smart_bonding_not_supported"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x3

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v7

    if-eqz v7, :cond_2

    const/4 v6, 0x1

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v0

    :goto_2
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v2, :cond_0

    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_6
    move-exception v0

    :goto_3
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/StringIndexOutOfBoundsException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v2, :cond_0

    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_0

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v2, :cond_3

    :try_start_a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    :cond_3
    :goto_5
    throw v6

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catchall_1
    move-exception v6

    move-object v2, v3

    goto :goto_4

    :catch_9
    move-exception v0

    move-object v2, v3

    goto :goto_3

    :catch_a
    move-exception v0

    move-object v2, v3

    goto :goto_2

    :catch_b
    move-exception v0

    move-object v2, v3

    goto :goto_1
.end method

.method private removeApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/4 v9, -0x2

    iget-object v7, p0, Lcom/android/systemui/qs/QsDatabaseUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1, v9}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v5, ""

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v0, v1, v3

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v2, p1, v5, v9}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private updateRetailMode()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/QsDatabaseUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.oem.smartwifisupport"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v1, "notification_panel_active_app_list_for_reset"

    const-string v2, "PersonalMode"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/qs/QsDatabaseUtils;->removeApp(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "notification_panel_active_app_list"

    const-string v2, "PersonalMode"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/qs/QsDatabaseUtils;->removeApp(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v1, "notification_panel_active_app_list_for_reset"

    const-string v2, "PersonalMode"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/qs/QsDatabaseUtils;->addApp(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "notification_panel_active_app_list"

    const-string v2, "PersonalMode"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/qs/QsDatabaseUtils;->addApp(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private updateVoWifiIfNeeded()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/QsDatabaseUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.oem.smartwifisupport"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const-string v1, "notification_panel_active_app_list_for_reset"

    const-string v2, "VoWiFi"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/qs/QsDatabaseUtils;->removeApp(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "notification_panel_active_app_list"

    const-string v2, "VoWiFi"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/qs/QsDatabaseUtils;->removeApp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v1, "notification_panel_active_app_list_for_reset"

    const-string v2, "VoWiFi"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/qs/QsDatabaseUtils;->addApp(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "notification_panel_active_app_list"

    const-string v2, "VoWiFi"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/qs/QsDatabaseUtils;->addApp(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private updateWfcIcon()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/qs/QsDatabaseUtils$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QsDatabaseUtils$5;-><init>(Lcom/android/systemui/qs/QsDatabaseUtils;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private updateWfcIconIfNeeded()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/qs/QsDatabaseUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/tmowfc/wfcutils/WfcUtilsHelper;->isValidSim(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "notification_panel_active_app_list_for_reset"

    const-string v1, "WifiCalling"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/QsDatabaseUtils;->removeApp(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "notification_panel_active_app_list"

    const-string v1, "WifiCalling"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/QsDatabaseUtils;->removeApp(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "notification_panel_active_app_list_for_reset"

    const-string v1, "WifiCalling"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/QsDatabaseUtils;->addApp(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "notification_panel_active_app_list"

    const-string v1, "WifiCalling"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/QsDatabaseUtils;->addApp(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public registerReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/QsDatabaseUtils;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/QsDatabaseUtils;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public registerReceiverSimChange()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/QsDatabaseUtils;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/QsDatabaseUtils;->mBroadcastReceiverSimChange:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final setDefaultQsActiveButtons(Landroid/content/Context;)V
    .locals 5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f004c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "notification_panel_active_number_of_apps"

    const/4 v4, -0x2

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public final setDefaultQsTilesList(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v3, -0x2

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QsDatabaseUtils;->getQuickSettingsList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notification_panel_active_app_list"

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notification_panel_active_app_list_for_reset"

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-object v0
.end method

.method public unRegisterReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QsDatabaseUtils;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/QsDatabaseUtils;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public unRegisterReceiverSimChange()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QsDatabaseUtils;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/QsDatabaseUtils;->mBroadcastReceiverSimChange:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
