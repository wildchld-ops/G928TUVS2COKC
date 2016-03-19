.class public Lcom/android/services/telephony/common/PhoneFeature;
.super Ljava/lang/Object;
.source "PhoneFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/common/PhoneFeature$Floating;
    }
.end annotation


# static fields
.field private static IncomingBargin_command:I

.field private static baseband:Ljava/lang/String;

.field private static buildcarrier:Ljava/lang/String;

.field private static countryiso_code:Ljava/lang/String;

.field private static deviceType:Ljava/lang/String;

.field private static language:Ljava/lang/String;

.field private static mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

.field private static mContext:Landroid/content/Context;

.field private static mFeatureList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static platform:Ljava/lang/String;

.field private static product_device:Ljava/lang/String;

.field private static salesCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    const-string v0, "ro.board.platform"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->platform:Ljava/lang/String;

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    const-string v0, "persist.sys.country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->language:Ljava/lang/String;

    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->deviceType:Ljava/lang/String;

    const-string v0, "ro.baseband"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->baseband:Ljava/lang/String;

    const-string v0, "ro.csc.countryiso_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    const-string v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->product_device:Ljava/lang/String;

    const/4 v0, 0x2

    sput v0, Lcom/android/services/telephony/common/PhoneFeature;->IncomingBargin_command:I

    return-void
.end method

.method public static hasCallPoseFeature(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/android/services/telephony/common/PhoneFeature;->hasSensorHub(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "ks01lte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "meliusca"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "melius3gduosctc"

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static hasDualLcdFeature()Z
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "com.sec.feature.dual_lcd"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    const-string v3, "PhoneFeature"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasDualLcdFeature = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static hasFeature(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static hasFolderTypeFeature()Z
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "com.sec.feature.folder_type"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    const-string v3, "PhoneFeature"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasFolderTypeFeature = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static hasIlluminanceSensor()Z
    .locals 6

    const/4 v4, 0x0

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    const-string v5, "sensor"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    if-nez v2, :cond_0

    move v3, v4

    :goto_0
    return v3

    :cond_0
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    const/4 v5, 0x5

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    if-ne v5, v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_0
.end method

.method public static hasOllehPhonePackage()Z
    .locals 6

    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v4, "feature_ktt"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "com.kt.ollehphone"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    const/4 v3, 0x1

    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static hasPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v1, 0x1

    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static hasProximitySensor()Z
    .locals 6

    const/4 v4, 0x0

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    const-string v5, "sensor"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    if-nez v2, :cond_0

    move v3, v4

    :goto_0
    return v3

    :cond_0
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    const/16 v5, 0x8

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    if-ne v5, v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_0
.end method

.method public static hasRCSBlackBird()Z
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_IMS_ConfigRcsFeatures"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "PARTIAL_BRANDED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static hasSPenFeature()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "com.sec.feature.spen_usp"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static hasSensorHub(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static hasTPhonePackage()Z
    .locals 6

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTablet()Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "jalte"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    :try_start_0
    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v4, "feature_skt"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "com.skt.prod.phone"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static hasVTSupport(Landroid/content/Context;)Z
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "com.sec.feature.call_vt_support"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :cond_0
    move v3, v2

    :goto_0
    return v3

    :catch_0
    move-exception v0

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static hasVibratorFeature()Z
    .locals 4

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    const/4 v0, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "ks01lte"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static hasVisualVoicemail()Z
    .locals 7

    const/4 v4, 0x0

    :try_start_0
    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v0, "com.coremobility.app.vnotes"

    const-string v5, "com.coremobility.app.vnotes"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-boolean v4, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return v4

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static isA8Project()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "a8lte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "a8elte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isAProject()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "a7"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "a5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "a3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isEProject()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "e7"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "e5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isHProject()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "h3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "ha3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "hlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "htdlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isJProject()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "ja3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "jalte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "ks01lte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "jsgltezm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "jfltezm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "jflte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "jactivelte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "jfvelte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "jftdd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "jfve"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isKProject()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "klte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "k3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "kqlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "kccat6xx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "lentislte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isLte()Z
    .locals 2

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v1, "lte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isMultiSimConfigDsdaEnabled()Z
    .locals 2

    const-string v1, "persist.radio.multisim.config"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dsda"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isMultiSimConfigDsdsEnabled()Z
    .locals 2

    const-string v1, "persist.radio.multisim.config"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dsds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "tsts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMultiSimTwoModem()Z
    .locals 2

    const-string v0, ""

    const-string v1, "DGG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DTCS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DCG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DCGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DCGG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DCGGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isNobleProject()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "noblelte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isNovel()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "novel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isPhilippeProject()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "philippe"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isSCOExists()Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    const-string v5, "com.smithmicro.mnd"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    const-string v5, "PhoneFeature"

    const-string v6, "SPRINT - SM SCO is installed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v3

    :catch_0
    move-exception v0

    const-string v5, "PhoneFeature"

    const-string v6, "SPRINT - SM SCO is not installed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v2, :cond_1

    :try_start_1
    const-string v5, "com.birdstep.android.cm"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    const-string v5, "PhoneFeature"

    const-string v6, "SPRINT - BS SCO is installed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v3, "PhoneFeature"

    const-string v5, "SPRINT - BS SCO is not installed"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v3, "PhoneFeature"

    const-string v5, "SPRINT - BS & SM SCO are not installed"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    goto :goto_0
.end method

.method public static isSrlte()Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "ro.ril.svlte1x"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isSupportHoveringUI(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "com.sec.feature.hovering_ui"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    move v3, v1

    :goto_0
    return v3

    :catch_0
    move-exception v0

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isTProject()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "trlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "trhlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "trelte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "tblte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "tbelte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "tre3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "trhplte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "tr3calte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "tre3calte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isTablet()Z
    .locals 2

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->deviceType:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->deviceType:Ljava/lang/String;

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTablets()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "vienna"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "v1a3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isVoLTEAndMultiSIM()Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v1, "CHN"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHU"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CTC"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHM"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHC"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    move v1, v3

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "enabled"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isMultiSimConfigDsdsEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isMultiSimConfigDsdaEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_1
    return v3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_1
.end method

.method public static isZero2Project()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "zen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isZeroProject()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "zerolte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "zeroqlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "zeroflte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "zerofqlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "zenlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static makeFeature(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->makePreconditionForFeature()V

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->makeFeatureForCommon()V

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->makeFeatureForTablet()V

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->makeFeatureForChina()V

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->makeFeatureForIndia()V

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->makeFeatureForHKTW()V

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->makeFeatureForJapan()V

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->makeFeatureForKor()V

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->makeFeatureForUsa()V

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->makeFeatureForCanada()V

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->makeFeatureForLatin()V

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->makeFeatureForAustralia()V

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->makeFeatureForAfrica()V

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->makeFeatureForPhoneSearch()V

    return-void
.end method

.method public static makeFeatureForAfrica()V
    .locals 5

    const/4 v2, 0x0

    const-string v1, "ECT"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "ui_for_ect"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "common_vt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "volte_call_waiting_terminal"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public static makeFeatureForAustralia()V
    .locals 12

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v7, "TEL"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v7, "OPS"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v7, "TEL"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "TLP"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "BST"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "BSP"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_0
    move v7, v9

    :goto_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v7, "OPS"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "OPP"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_1
    move v7, v9

    :goto_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v7, "VAU"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "VAP"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_2
    move v7, v9

    :goto_2
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v7, "XSA"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "JBH"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_3
    move v7, v9

    :goto_3
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_9

    :cond_4
    move v7, v9

    :goto_4
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_a

    :goto_5
    return-void

    :cond_5
    move v7, v8

    goto :goto_0

    :cond_6
    move v7, v8

    goto :goto_1

    :cond_7
    move v7, v8

    goto :goto_2

    :cond_8
    move v7, v8

    goto :goto_3

    :cond_9
    move v7, v8

    goto :goto_4

    :cond_a
    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "telstra_ringback"

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_b

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_c

    :cond_b
    move v8, v9

    :cond_c
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_tel"

    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "volte_call_waiting_terminal"

    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "remove_volte_outgoing_calltype_menu"

    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5
.end method

.method public static makeFeatureForCanada()V
    .locals 21

    const-string v17, "RWC"

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const-string v17, "FMC"

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string v17, "RWA"

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const-string v17, "BMC"

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v17, "kvoltevl"

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "kltevl"

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "kltevlactive"

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "jfltevl"

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "jfltevw"

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "hltevl"

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "trltecan"

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "zeroltebmc"

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "zerofltebmc"

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "chagallltevl"

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "sltecan"

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "gprimeltevl"

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "tbltecan"

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "nobleltebmc"

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "zenltebmc"

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    :cond_0
    const/16 v17, 0x1

    :goto_0
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v17, "d2vw"

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    const-string v17, "VTR"

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    :cond_1
    const/16 v17, 0x1

    :goto_1
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    const-string v17, "jfltevw"

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    const-string v17, "jfltewx"

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    :cond_2
    const/16 v17, 0x1

    :goto_2
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const-string v17, "BMA"

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v17, "VMC"

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    const-string v17, "BWA"

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v17, "TLS"

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const-string v17, "KDO"

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const-string v17, "ESK"

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v17, "GLW"

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_3

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_3

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_3

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_3

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_3

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_3

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_3

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_3

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_3

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_3

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_3

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_7

    :cond_3
    const/16 v17, 0x1

    :goto_3
    if-nez v17, :cond_8

    :goto_4
    return-void

    :cond_4
    const/16 v17, 0x0

    goto/16 :goto_0

    :cond_5
    const/16 v17, 0x0

    goto/16 :goto_1

    :cond_6
    const/16 v17, 0x0

    goto/16 :goto_2

    :cond_7
    const/16 v17, 0x0

    goto :goto_3

    :cond_8
    sget-object v17, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v18, "beep_vibration_for_ussd"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v18, "hac_enable"

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v19, "feature_rwc"

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_9

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_1a

    :cond_9
    const/16 v17, 0x1

    :goto_5
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v18, "tty_enable"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v18, "disable_popupmsg_when_deactivationcf"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v19, "show_callforward_allcalls_string"

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_a

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_a

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_1b

    :cond_a
    const/16 v17, 0x1

    :goto_6
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v18, "feature_can"

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v19, "video_call_disable"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_b

    sget-object v17, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasVTSupport(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_1c

    :cond_b
    const/16 v17, 0x1

    :goto_7
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v19, "video_call_not_support"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_c

    sget-object v17, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasVTSupport(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_1d

    :cond_c
    const/16 v17, 0x1

    :goto_8
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v19, "networkmode_in_can"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_d

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_d

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_d

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_d

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_d

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_d

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_d

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_1e

    :cond_d
    const/16 v17, 0x1

    :goto_9
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v18, "get_orig_dial_string_enable"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v18, "show_callsettings_ringtones_keytones_preference"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v18, "remove_minute_minder_setting"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v18, "save_cnap_info_in_call_log"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v19, "barge_in"

    sget-object v17, Lcom/android/services/telephony/common/PhoneFeature;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    sget v20, Lcom/android/services/telephony/common/PhoneFeature;->IncomingBargin_command:I

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isBargeInEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_1f

    const-string v17, "gprimeltevl"

    sget-object v20, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1f

    const/16 v17, 0x1

    :goto_a
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v18, "display_hd_icon"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v17, "common_volte"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_15

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v19, "canada_volte_ui"

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_e

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_e

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_e

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_e

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_20

    :cond_e
    const/16 v17, 0x1

    :goto_b
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v19, "video_connected_as_voice"

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_f

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_f

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_f

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_f

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_21

    :cond_f
    const/16 v17, 0x1

    :goto_c
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v19, "incoming_call_widget_for_volte"

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_10

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_10

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_10

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_10

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_22

    :cond_10
    const/16 v17, 0x1

    :goto_d
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v19, "us_sound_path"

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_11

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_11

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_11

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_23

    :cond_11
    const/16 v17, 0x1

    :goto_e
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v19, "modify_call_us"

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_12

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_12

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_12

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_12

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_24

    :cond_12
    const/16 v17, 0x1

    :goto_f
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v19, "ims_capability_service"

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_13

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_13

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_13

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_25

    :cond_13
    const/16 v17, 0x1

    :goto_10
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v18, "change_order_of_endcall_buttons"

    const-string v19, "canada_volte_ui"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v18, "volte_call_waiting_terminal"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v19, "ims_capability_check_on_call_end"

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_14

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_14

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_14

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_26

    :cond_14
    const/16 v17, 0x1

    :goto_11
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    const-string v17, "common_vt"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_18

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v19, "concept_canada_common"

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_16

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_16

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_16

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_27

    :cond_16
    const/16 v17, 0x1

    :goto_12
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v18, "gui_usa_fragment"

    const-string v19, "concept_canada_common"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v18, "support_rotation"

    const-string v19, "concept_canada_common"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v18, "clean_mode"

    const-string v19, "concept_canada_common"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v18, "answer_option"

    const-string v19, "concept_canada_common"

    invoke-static/range {v19 .. v19}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v19, "add_vt_hold_in_menu"

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_17

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_28

    :cond_17
    const/16 v17, 0x1

    :goto_13
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    sget-object v17, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v18, "show_switch_icon_in_button"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v18, "show_switch_icon_on_call_card"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v18, "play_busy_tone_sup_busy"

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v18, "NEED_TO_SHOW_AS_FULLSCREEN_SECOND_SCREEN"

    const-string v19, "tbltecan"

    sget-object v20, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v19, "use_simple_network_word"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isNobleProject()Z

    move-result v17

    if-nez v17, :cond_19

    sget-object v17, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v20, "zenlte"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_29

    :cond_19
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_29

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_29

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_29

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_29

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_29

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_29

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_29

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_29

    const/16 v17, 0x1

    :goto_14
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_1a
    const/16 v17, 0x0

    goto/16 :goto_5

    :cond_1b
    const/16 v17, 0x0

    goto/16 :goto_6

    :cond_1c
    const/16 v17, 0x0

    goto/16 :goto_7

    :cond_1d
    const/16 v17, 0x0

    goto/16 :goto_8

    :cond_1e
    const/16 v17, 0x0

    goto/16 :goto_9

    :cond_1f
    const/16 v17, 0x0

    goto/16 :goto_a

    :cond_20
    const/16 v17, 0x0

    goto/16 :goto_b

    :cond_21
    const/16 v17, 0x0

    goto/16 :goto_c

    :cond_22
    const/16 v17, 0x0

    goto/16 :goto_d

    :cond_23
    const/16 v17, 0x0

    goto/16 :goto_e

    :cond_24
    const/16 v17, 0x0

    goto/16 :goto_f

    :cond_25
    const/16 v17, 0x0

    goto/16 :goto_10

    :cond_26
    const/16 v17, 0x0

    goto/16 :goto_11

    :cond_27
    const/16 v17, 0x0

    goto/16 :goto_12

    :cond_28
    const/16 v17, 0x0

    goto/16 :goto_13

    :cond_29
    const/16 v17, 0x0

    goto :goto_14
.end method

.method public static makeFeatureForChina()V
    .locals 13

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v7, "CHN"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "CHU"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "CTC"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "CHM"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "CHC"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_0
    move v7, v9

    :goto_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v7, "CTC"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "ctc"

    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_1
    move v7, v9

    :goto_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v7, "CHM"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v7, "CHC"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "ltetdzc"

    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_2
    move v7, v9

    :goto_2
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v7, "CHU"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v7, "CHN"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "CHU"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "CHM"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "CHC"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_3
    move v7, v9

    :goto_3
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_9

    :cond_4
    move v7, v9

    :goto_4
    if-nez v7, :cond_a

    :goto_5
    return-void

    :cond_5
    move v7, v8

    goto/16 :goto_0

    :cond_6
    move v7, v8

    goto :goto_1

    :cond_7
    move v7, v8

    goto :goto_2

    :cond_8
    move v7, v8

    goto :goto_3

    :cond_9
    move v7, v8

    goto :goto_4

    :cond_a
    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "feature_chn"

    invoke-virtual {v7, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "feature_ctc"

    invoke-virtual {v7, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "fdn_nameinput_maxlength_limit"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_b

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_21

    :cond_b
    move v7, v9

    :goto_6
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v10, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "auto_redial_time_delay"

    invoke-virtual {v7, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "remove_call_duration"

    const-string v11, "CHM"

    sget-object v12, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "support_spam_call"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v12, "a8lte"

    invoke-virtual {v7, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v12, "noblelte"

    invoke-virtual {v7, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v12, "zenlte"

    invoke-virtual {v7, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_22

    :cond_c
    move v7, v9

    :goto_7
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v10, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "support_spam_call_reject"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "support_spam_call_report"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v12, "noblelte"

    invoke-virtual {v7, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v12, "zenlte"

    invoke-virtual {v7, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_23

    :cond_d
    move v7, v9

    :goto_8
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v10, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "ip_call"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "action_bar_no_title_when_has_two_menu"

    const-string v11, "ip_call"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "support_folder_hardkey"

    sget-object v11, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v12, "philippe"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "support_charges_notification_in_pnl"

    invoke-virtual {v7, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "call_block_ui"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "cdma_additional_setting_enable"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "hide_caller_id"

    invoke-virtual {v7, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "vt_call_fail_fallback"

    sget-object v11, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasVTSupport(Landroid/content/Context;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "video_call_disable"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_e

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasVTSupport(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_24

    :cond_e
    move v7, v9

    :goto_9
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v10, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "separate_call_reject"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasVTSupport(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_25

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isZeroProject()Z

    move-result v7

    if-nez v7, :cond_25

    move v7, v9

    :goto_a
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v10, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "vt_cmcc_operator_fallback"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_26

    const-string v7, "common_vt"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_26

    move v7, v9

    :goto_b
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v10, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "vt_cmcc_adjust_camera_contrast_brightness"

    invoke-virtual {v7, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "vt_cmcc_adjust_screen_brightness"

    invoke-virtual {v7, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "vt_audio_mixed_recording"

    invoke-virtual {v7, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "vt_audio_mixed_recording_via_stack"

    sget-object v11, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v12, "h3gzm"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "vt_multimedia_ringback_tone_timer"

    invoke-virtual {v7, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "vt_cmcc_operator_open_close_camera"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_27

    const-string v7, "common_vt"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_27

    move v7, v9

    :goto_c
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v10, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "vt_cmcc_accept_by_voicecall"

    invoke-virtual {v7, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "vt_cmcc_display_start_call_time"

    invoke-virtual {v7, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "support_rotation"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_28

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isZeroProject()Z

    move-result v7

    if-eqz v7, :cond_28

    move v7, v9

    :goto_d
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v10, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "remove_network_mode"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_f

    const-string v7, "network_mode_list_lte"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    const-string v7, "jfltezm"

    sget-object v12, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    :cond_f
    const-string v7, "hltetdzc"

    sget-object v12, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    :cond_10
    move v7, v9

    :goto_e
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v10, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "preferred_networks"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_11

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_11

    const-string v7, "network_mode_list_lte"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2a

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2a

    :cond_11
    move v7, v9

    :goto_f
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v10, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "network_mode_td_open_l_osup"

    const-string v7, "chagallltetdzc"

    sget-object v12, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12

    const-string v7, "klimtltetdzc"

    sget-object v12, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12

    const-string v7, "a5ltezc"

    sget-object v12, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2b

    :cond_12
    move v7, v9

    :goto_10
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v10, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "NETWORK_MODE_NOT_SUPPORT_3G_ONLY_AND_2G_ONLY"

    const-string v7, "network_mode_list_lte"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2c

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_13

    const-string v7, "network_mode_td_open_l_osup"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_13

    const-string v7, "support_all_rat"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2c

    :cond_13
    move v7, v9

    :goto_11
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v10, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "display_tdscdma_instead_of_wcdma"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_14

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2d

    :cond_14
    move v7, v9

    :goto_12
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v10, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "phone_number_locator"

    invoke-virtual {v7, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "geo_description_disable"

    invoke-virtual {v7, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "ctc_country_code_locator"

    invoke-virtual {v7, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "support_lunar_birthday"

    invoke-virtual {v7, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "disable_sip_call_setting"

    invoke-virtual {v7, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "reject_call_with_message_icon_mode"

    const-string v11, "ICON"

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "suppor_mute_button_in_easy_mode"

    const-string v7, "support_easy_mode"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2e

    const-string v7, "common_vt"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2e

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2e

    move v7, v9

    :goto_13
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v10, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "yellowpage_callerid_info"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "visual_call_center_callerid_info"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "cdma_apn_enable"

    invoke-virtual {v7, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "ctc_call_time_duration"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_15

    const-string v7, "support_all_rat"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2f

    :cond_15
    move v7, v9

    :goto_14
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v10, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "ctc_vip_mode"

    invoke-virtual {v7, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "nobleltectc"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "cdma_call_forwarding_indicator"

    invoke-virtual {v7, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "feature_multisim_preferred_sim"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "sim2_2g_only"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "vt_missed_noti_during_call"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_30

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasVTSupport(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_30

    move v7, v9

    :goto_15
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v10, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "feature_multisim_emergency_call_cp_limitation"

    const-string v11, "klteduosctc"

    sget-object v12, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "feature_multisim_emergency_call_ctc"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_31

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isMultiSimConfigDsdsEnabled()Z

    move-result v7

    if-nez v7, :cond_16

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isMultiSimConfigDsdaEnabled()Z

    move-result v7

    if-eqz v7, :cond_31

    :cond_16
    move v7, v9

    :goto_16
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v10, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "feature_multisim_modem_type_DCGS"

    const-string v11, "DCGS"

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "feature_multisim_modem_type_DCGGS"

    const-string v11, "DCGGS"

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "feature_multisim_display_sim_icon"

    const-string v11, "feature_multisim"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "ctc_cdma_smc_fac_req"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_17

    const-string v7, "support_all_rat"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_32

    :cond_17
    move v7, v9

    :goto_17
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v10, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "get_orig_dial_string_enable"

    invoke-virtual {v7, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "network_mode_cmcc"

    invoke-virtual {v7, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "network_mode_only_cmcc_card_support_4g"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_33

    const-string v7, "philippeltezm"

    sget-object v12, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_33

    move v7, v9

    :goto_18
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v10, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "emergency_call_sprd_multisim"

    const-string v11, "trlteduoszn"

    sget-object v12, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "barge_in"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    sget v12, Lcom/android/services/telephony/common/PhoneFeature;->IncomingBargin_command:I

    invoke-virtual {v7, v12}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isBargeInEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_34

    const-string v7, "zerofltezm"

    sget-object v12, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_34

    const-string v7, "philippeltezm"

    sget-object v12, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_34

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v12, "a5lte"

    invoke-virtual {v7, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_34

    move v7, v9

    :goto_19
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v10, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "disable_waiting_tone_by_network"

    invoke-virtual {v7, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "PhoneFeature"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "makeFeatureForCommon() IMS.COMMON_VOLTE:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "common_volte"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "common_volte"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_19

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "volte_settings_in_mobile_networks_common"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "volte_settings_in_mobile_networks_chn"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "volte_call_waiting_terminal"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "ims_voice_conference"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "volte_cmcc_data_enable_popup"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "ims_voice_conference_cmcc"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "incoming_call_widget_for_volte"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "cmcc_color_ringback_tone"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "gui_chn_fragment"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "ui_for_chn"

    const-string v11, "common_vt"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "display_hd_icon"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isZeroProject()Z

    move-result v7

    if-nez v7, :cond_18

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v12, "a8lte"

    invoke-virtual {v7, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_35

    :cond_18
    move v7, v9

    :goto_1a
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v10, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "volte_chn_callsetting_apn_prompt"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "volte_call_waiting_terminal"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "outgoing_image_from_gallery"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "rearrange_preset_image_setting"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "show_forwarding_number"

    invoke-virtual {v7, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    const-string v7, "CHM"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "enable_volte_hold_tone"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "volte_chn_callsetting_data_prompt"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "disable_outgoing_callbarring_cmcc"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "skip_call_barring_outgoing"

    invoke-virtual {v7, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "volte_cmcc_cfu_time"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "support_psvt_only"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isZeroProject()Z

    move-result v7

    if-nez v7, :cond_1b

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isNobleProject()Z

    move-result v7

    if-eqz v7, :cond_36

    :cond_1b
    move v7, v9

    :goto_1b
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v10, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "old_cp_select_network"

    const-string v7, "h3gzm"

    sget-object v12, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1c

    const-string v7, "jfltezm"

    sget-object v12, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_37

    :cond_1c
    move v7, v9

    :goto_1c
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v10, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "call_end_time_blink_ja3g"

    sget-object v11, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v12, "ja3g"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "block_call_during_lpm_dsds"

    const-string v7, "trlteduoszn"

    sget-object v12, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1d

    const-string v7, "trlteduoszc"

    sget-object v12, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_38

    :cond_1d
    move v7, v9

    :goto_1d
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v10, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "feature_chn_home_dsda_roaming_dsds"

    const-string v7, "trlteduosctc"

    sget-object v12, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1e

    const-string v7, "trlteduoszm"

    sget-object v12, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_39

    :cond_1e
    move v7, v9

    :goto_1e
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v10, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "hot_swap_type_qcom"

    const-string v11, "QCOM"

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "not_support_ims_conference_split"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "china_cdma_call"

    invoke-virtual {v7, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "remove_cdma_call_barring"

    invoke-virtual {v7, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "chn_cdma_network_on_all_rat"

    const-string v11, "support_all_rat"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "change_network_mode_with_ctc_card_for_six_mode"

    const-string v11, "support_all_rat"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "chn_cdma_setting_on_all_rat"

    const-string v11, "support_all_rat"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "ctc_call_time_duration_for_six_mode"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_3a

    const-string v7, "support_all_rat"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3a

    move v7, v9

    :goto_1f
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v10, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "emergency_call_state_update_after_dial"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "support_at_command_for_cmcc_volte_test"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_1f

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_20

    :cond_1f
    move v8, v9

    :cond_20
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_21
    move v7, v8

    goto/16 :goto_6

    :cond_22
    move v7, v8

    goto/16 :goto_7

    :cond_23
    move v7, v8

    goto/16 :goto_8

    :cond_24
    move v7, v8

    goto/16 :goto_9

    :cond_25
    move v7, v8

    goto/16 :goto_a

    :cond_26
    move v7, v8

    goto/16 :goto_b

    :cond_27
    move v7, v8

    goto/16 :goto_c

    :cond_28
    move v7, v8

    goto/16 :goto_d

    :cond_29
    move v7, v8

    goto/16 :goto_e

    :cond_2a
    move v7, v8

    goto/16 :goto_f

    :cond_2b
    move v7, v8

    goto/16 :goto_10

    :cond_2c
    move v7, v8

    goto/16 :goto_11

    :cond_2d
    move v7, v8

    goto/16 :goto_12

    :cond_2e
    move v7, v8

    goto/16 :goto_13

    :cond_2f
    move v7, v8

    goto/16 :goto_14

    :cond_30
    move v7, v8

    goto/16 :goto_15

    :cond_31
    move v7, v8

    goto/16 :goto_16

    :cond_32
    move v7, v8

    goto/16 :goto_17

    :cond_33
    move v7, v8

    goto/16 :goto_18

    :cond_34
    move v7, v8

    goto/16 :goto_19

    :cond_35
    move v7, v8

    goto/16 :goto_1a

    :cond_36
    move v7, v8

    goto/16 :goto_1b

    :cond_37
    move v7, v8

    goto/16 :goto_1c

    :cond_38
    move v7, v8

    goto/16 :goto_1d

    :cond_39
    move v7, v8

    goto/16 :goto_1e

    :cond_3a
    move v7, v8

    goto :goto_1f
.end method

.method public static makeFeatureForCommon()V
    .locals 44

    const/4 v13, 0x0

    const/4 v12, 0x0

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v40, "lte"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    const-string v39, "ATL"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_0

    const-string v39, "AVF"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_0

    const-string v39, "CNX"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_0

    const-string v39, "CYV"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_0

    const-string v39, "MOB"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_0

    const-string v39, "MTL"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_0

    const-string v39, "OMN"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_0

    const-string v39, "SIM"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_0

    const-string v39, "SWC"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_0

    const-string v39, "TCL"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_0

    const-string v39, "VD2"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_0

    const-string v39, "VDC"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_0

    const-string v39, "VDF"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_0

    const-string v39, "VDH"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_0

    const-string v39, "VDI"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_0

    const-string v39, "VGR"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_0

    const-string v39, "VIP"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_0

    const-string v39, "VOD"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_0

    const-string v39, "XFV"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_0

    const-string v39, "VDR"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_0

    const-string v39, "VDP"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_0

    const-string v39, "VOP"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_0

    const-string v39, "SFR"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_0

    const-string v39, "TOP"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_4e

    :cond_0
    const/16 v32, 0x1

    :goto_0
    const-string v39, "jftddzh"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_1

    const-string v39, "jftddzn"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_1

    const-string v39, "kccat6xx"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_1

    const-string v39, "carmen2xx"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_1

    const-string v39, "jftddxx"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_1

    const-string v39, "carmen2zm"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_2

    :cond_1
    const/4 v14, 0x1

    :cond_2
    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "enabled"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v41

    const-string v42, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual/range {v41 .. v42}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v39, "enabled"

    invoke-static/range {v39 .. v39}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_3

    const/16 v39, 0x0

    :try_start_0
    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-static/range {v39 .. v40}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->isServiceAvailable(ILandroid/content/Context;)Z

    move-result v13

    const-string v39, "PhoneFeature"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "makeFeatureForCommon(): IMS.COMMON_VOLTE is "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v13, :cond_4f

    const/16 v39, 0x4

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-static/range {v39 .. v40}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->isServiceAvailable(ILandroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v39

    if-eqz v39, :cond_4f

    const/4 v12, 0x1

    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isVoLTEAndMultiSIM()Z

    move-result v39

    if-eqz v39, :cond_4

    const/4 v13, 0x1

    const/4 v13, 0x1

    :cond_4
    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "enabled_boost_cpu"

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "no_rfchip_ldu_device"

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "zerolteldu"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_5

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "zeroflteldu"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-eqz v39, :cond_50

    :cond_5
    const/16 v39, 0x1

    :goto_2
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "feature_org"

    const-string v39, "OFR"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_6

    const-string v39, "SFR"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_6

    const-string v39, "FTM"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_6

    const-string v39, "FTB"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_51

    :cond_6
    const/16 v39, 0x1

    :goto_3
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "feature_dt"

    const-string v39, "DTM"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_7

    const-string v39, "DTR"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_7

    const-string v39, "DCZ"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_7

    const-string v39, "TMZ"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_7

    const-string v39, "TPL"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_7

    const-string v39, "TNL"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_52

    :cond_7
    const/16 v39, 0x1

    :goto_4
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "simulation_enabled"

    const/16 v41, 0x0

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "ims_callplus"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v41

    const-string v42, "CscFeature_IMS_SupportCallPlus"

    invoke-virtual/range {v41 .. v42}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "ims_rcs"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v41

    const-string v42, "CscFeature_IMS_EnableRCSe"

    invoke-virtual/range {v41 .. v42}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "tablet_l_osup"

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "chagall"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_8

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "klimt"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_8

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "matisse"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_8

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "vienna"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_8

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "millet"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_8

    const-string v39, "v1a3gxx"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_8

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "degas"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_8

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "v2lte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_8

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "lt03"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_53

    :cond_8
    const/16 v39, 0x1

    :goto_5
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "tablet_l"

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "gt5"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_9

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "gts2"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-eqz v39, :cond_54

    :cond_9
    const/16 v39, 0x1

    :goto_6
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "ims_rcs_bb"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->hasRCSBlackBird()Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "common_volte"

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "common_vt"

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "j_device"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "use_action_memo_string"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTProject()Z

    move-result v39

    if-nez v39, :cond_a

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v39

    if-nez v39, :cond_a

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTablets()Z

    move-result v39

    if-eqz v39, :cond_55

    :cond_a
    const/16 v39, 0x1

    :goto_7
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v39

    const-string v40, "CscFeature_VoiceCall_ConfigRecording"

    invoke-virtual/range {v39 .. v40}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "voice_call_recording"

    const-string v41, "RecordingAllowed"

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "voice_call_recording_easy_mode"

    const-string v41, "voice_call_recording"

    invoke-static/range {v41 .. v41}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "voice_call_recording_call_log"

    const-string v39, "voice_call_recording"

    invoke-static/range {v39 .. v39}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_56

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v39

    const-string v42, "CscFeature_Contact_EnableLogIconForVoiceRecord"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_56

    const/16 v39, 0x1

    :goto_8
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "default_caller_information"

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v39, "ATL"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_b

    const-string v39, "AVF"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_b

    const-string v39, "CNX"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_b

    const-string v39, "OMN"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_b

    const-string v39, "TCL"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_b

    const-string v39, "VD2"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_b

    const-string v39, "VDC"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_b

    const-string v39, "VDF"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_b

    const-string v39, "VDH"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_b

    const-string v39, "VDI"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_b

    const-string v39, "VGR"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_b

    const-string v39, "VOD"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_57

    :cond_b
    const/16 v38, 0x1

    :goto_9
    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "video_call_button_disable"

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "remove_volte_outgoing_calltype_menu"

    const-string v39, "common_volte"

    invoke-static/range {v39 .. v39}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_58

    const-string v39, "SFR"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_c

    const-string v39, "EVR"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_c

    const-string v39, "XSG"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_c

    if-eqz v32, :cond_58

    :cond_c
    const/16 v39, 0x1

    :goto_a
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "volte_outgoing_calltype_default_on"

    const-string v39, "common_volte"

    invoke-static/range {v39 .. v39}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_59

    const-string v39, "XSG"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_59

    const/16 v39, 0x1

    :goto_b
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "volte_settings_in_mobile_networks_eur"

    const-string v39, "NEE"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_d

    const-string v39, "NEV"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_d

    const-string v39, "PHN"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_d

    const-string v39, "VD2"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_d

    const-string v39, "DTM"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_d

    const-string v39, "DTR"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_d

    const-string v39, "TMZ"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_d

    const-string v39, "DCZ"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_d

    const-string v39, "VIA"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_d

    const-string v39, "SWC"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_d

    const-string v39, "MOB"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_5a

    :cond_d
    const/16 v39, 0x1

    :goto_c
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "disable_call_barring"

    const-string v41, "VIA"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "show_call_barring_password"

    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "volte_settings_in_mobile_networks_common"

    const-string v39, "volte_settings_in_mobile_networks_eur"

    invoke-static/range {v39 .. v39}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_e

    const-string v39, "THL"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_5b

    :cond_e
    const/16 v39, 0x1

    :goto_d
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "support_additional_ss_query"

    const-string v39, "common_volte"

    invoke-static/range {v39 .. v39}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_5c

    const-string v39, "SIN"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_f

    const-string v39, "TEL"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_5c

    :cond_f
    const/16 v39, 0x1

    :goto_e
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "default_volte"

    const-string v41, "common_volte"

    invoke-static/range {v41 .. v41}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "volte_call_waiting_terminal"

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "volte_call_waiting_default_off"

    const-string v39, "AUT"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_10

    const-string v39, "OMN"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_5d

    :cond_10
    const/16 v39, 0x1

    :goto_f
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "feature_multisim_display_sim_icon"

    sget-object v41, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "a8eltejv"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v39, "DTR"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_11

    const-string v39, "DTM"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_11

    const-string v39, "DCZ"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_11

    const-string v39, "TMZ"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_5e

    :cond_11
    const/4 v9, 0x1

    :goto_10
    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "dtr_volte_ui"

    const-string v39, "common_volte"

    invoke-static/range {v39 .. v39}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_5f

    if-eqz v9, :cond_5f

    const/16 v39, 0x1

    :goto_11
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "default_incomingcall_popup"

    const-string v39, "j_device"

    invoke-static/range {v39 .. v39}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_60

    const-string v39, "tablet_l_osup"

    invoke-static/range {v39 .. v39}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_60

    const/16 v39, 0x1

    :goto_12
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "fdn_button_call"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v41

    const-string v42, "CscFeature_VoiceCall_EnableCallButtonInFdnList"

    invoke-virtual/range {v41 .. v42}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "fdn_nameinput_maxlength_limit"

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "default_vm_in_callforwarding"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v41

    const-string v42, "CscFeature_VoiceCall_EnableVmsNumberAsDefaultInCallForwarding"

    invoke-virtual/range {v41 .. v42}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "disable_sip_call_setting"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTProject()Z

    move-result v39

    if-nez v39, :cond_12

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isAProject()Z

    move-result v39

    if-nez v39, :cond_12

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isEProject()Z

    move-result v39

    if-nez v39, :cond_12

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "gprimeltevl"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_61

    :cond_12
    const/16 v39, 0x1

    :goto_13
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "support_proximity sensor menu"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v39

    if-nez v39, :cond_13

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v39

    if-eqz v39, :cond_62

    :cond_13
    const/16 v39, 0x1

    :goto_14
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "menu_simplification"

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "disable_auto_area_code"

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "hide_popup_progress_view"

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "call_block_list_ui"

    const-string v39, "menu_simplification"

    invoke-static/range {v39 .. v39}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_63

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isNobleProject()Z

    move-result v39

    if-nez v39, :cond_14

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "zen"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_63

    :cond_14
    const/16 v39, 0x1

    :goto_15
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "use_switch_preference"

    const/16 v41, 0x0

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "use_simple_network_word"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isNobleProject()Z

    move-result v39

    if-nez v39, :cond_15

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "zenlte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-eqz v39, :cond_64

    :cond_15
    const/16 v39, 0x1

    :goto_16
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "support_only_contact_with_phone"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isNobleProject()Z

    move-result v39

    if-nez v39, :cond_16

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "zen"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_65

    :cond_16
    const/16 v39, 0x1

    :goto_17
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "hac_enable"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v39

    const-string v42, "CscFeature_Setting_SupportHAC"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_66

    const/16 v39, 0x1

    :goto_18
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "ringtone_mute_gap"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->needMuteGap()Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "support_safetycare"

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v39

    const-string v40, "CscFeature_Common_ConfigNetworkModeDuringEmergency"

    invoke-virtual/range {v39 .. v40}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "support_safetycare_not_change_network_mode"

    const-string v39, "support_safetycare"

    invoke-static/range {v39 .. v39}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_67

    const-string v39, "NOCHANGE"

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_67

    const/16 v39, 0x1

    :goto_19
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "support_wfc"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v41

    const-string v42, "CscFeature_Setting_SupportWifiCall"

    invoke-virtual/range {v41 .. v42}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "support_wfc_dt"

    const-string v39, "support_wfc"

    invoke-static/range {v39 .. v39}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_68

    const-string v39, "DTR"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_17

    const-string v39, "DTM"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_17

    const-string v39, "TMZ"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_17

    const-string v39, "DCZ"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_17

    const-string v39, "FTM"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_17

    const-string v39, "ORO"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_68

    :cond_17
    const/16 v39, 0x1

    :goto_1a
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "show_wifi_calling_menu"

    const-string v39, "AUT"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_69

    const-string v39, "CH"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_69

    const/16 v39, 0x1

    :goto_1b
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "national_roaming_mode_menu"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v41

    const-string v42, "CscFeature_Setting_EnableDataRoamingMenuInDetail"

    invoke-virtual/range {v41 .. v42}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "national_roaming_mode_menu_play"

    const-string v39, "PRT"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_18

    const-string v39, "XEO"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_6a

    :cond_18
    const/16 v39, 0x1

    :goto_1c
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "data_roaming_option_national"

    const-string v41, "national"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v42

    const-string v43, "CscFeature_Setting_DataRoamingOption"

    invoke-virtual/range {v42 .. v43}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "data_roaming_option_all"

    const-string v41, "all"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v42

    const-string v43, "CscFeature_Setting_DataRoamingOption"

    invoke-virtual/range {v42 .. v43}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "data_roaming_noti_tray"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v41

    const-string v42, "CscFeature_Setting_EnableDataRoamingButtonInQuickPanel"

    invoke-virtual/range {v41 .. v42}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "remove_network_mode_wcdma_gsm_only"

    const-string v41, "wcdmagsmonly"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v42

    const-string v43, "CscFeature_Setting_DisableNetworkMode"

    invoke-virtual/range {v42 .. v43}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "remove_network_mode_wcdma_only"

    const-string v41, "wcdmaonly"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v42

    const-string v43, "CscFeature_Setting_DisableNetworkMode"

    invoke-virtual/range {v42 .. v43}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "remove_network_mode_gsm_only"

    const-string v41, "gsmonly"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v42

    const-string v43, "CscFeature_Setting_DisableNetworkMode"

    invoke-virtual/range {v42 .. v43}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "remove_network_mode_lte"

    const-string v41, "lte"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v42

    const-string v43, "CscFeature_Setting_DisableNetworkMode"

    invoke-virtual/range {v42 .. v43}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "cust_network_sel_menu4_atl_lte"

    const-string v41, "ATL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v42

    const-string v43, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual/range {v42 .. v43}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "cust_network_sel_menu4_o2"

    const-string v41, "O2"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v42

    const-string v43, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual/range {v42 .. v43}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "cust_network_sel_menu4_orange"

    const-string v41, "ORANGE"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v42

    const-string v43, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual/range {v42 .. v43}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "cust_network_sel_menu4_sfr"

    const-string v41, "SFR"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v42

    const-string v43, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual/range {v42 .. v43}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "cust_network_sel_menu4_vodafone"

    const-string v41, "VODAFONE"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v42

    const-string v43, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual/range {v42 .. v43}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "cust_network_sel_menu4_yog"

    const-string v41, "YOG"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v42

    const-string v43, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual/range {v42 .. v43}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "cust_network_sel_menu4_via"

    const-string v41, "VIA"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v42

    const-string v43, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual/range {v42 .. v43}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "cust_network_sel_menu4_numeric"

    const-string v41, "NUMERIC"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v42

    const-string v43, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual/range {v42 .. v43}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "cust_network_sel_menu4_character"

    const-string v41, "CHARACTER"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v42

    const-string v43, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual/range {v42 .. v43}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_1
    invoke-static {}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getInstance()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v35

    if-eqz v35, :cond_6b

    invoke-virtual/range {v35 .. v35}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getLTESettingState()Z

    move-result v39

    if-eqz v39, :cond_6b

    const-string v39, "PhoneFeature"

    const-string v40, "makeFeatureForCommon(): Knox Customization: LTE Setting is true"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "cust_network_sel_menu4_lteonly"

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1d
    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "network_state_manual_search"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v41

    const-string v42, "CscFeature_Setting_ManualSearchListWithDetailStatus"

    invoke-virtual/range {v41 .. v42}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "bootup_data_connection_popup"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v41

    const-string v42, "CscFeature_Setting_EnableDataServicePopup"

    invoke-virtual/range {v41 .. v42}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "bootup_data_tariff_rate_popup"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v41

    const-string v42, "CscFeature_Settig_EnableDataTariffWizard"

    invoke-virtual/range {v41 .. v42}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "emergency_contacts_item"

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "emergency_dialer_sound_pool_tones_haptic"

    const/16 v41, 0x0

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "emergency_dialer_haptic_feedback_enabled"

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v41

    const-string v42, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_VIBETONZ"

    invoke-virtual/range {v41 .. v42}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "emergency_contacts"

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "emergency_dialer_expandable_dial"

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "play_emergency_dialer_key_tone"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isNovel()Z

    move-result v39

    if-nez v39, :cond_19

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isPhilippeProject()Z

    move-result v39

    if-eqz v39, :cond_6c

    :cond_19
    const/16 v39, 0x1

    :goto_1e
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "show_extra_volume_in_call_card"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v39

    if-nez v39, :cond_6d

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v39

    if-nez v39, :cond_6d

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "klimtltexx"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_6d

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "millet"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_6d

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "hllte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_6d

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "hl3g"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_6d

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "t0lte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_6d

    const/16 v39, 0x1

    :goto_1f
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "show_personalise_sound_in_call_card"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v39

    if-nez v39, :cond_1a

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v39

    if-nez v39, :cond_1a

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "hllte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_1a

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "hl3g"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_1a

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "t0lte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_6e

    :cond_1a
    const/16 v39, 0x1

    :goto_20
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "enbale_voicerecording_popup_when_incoming"

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "dtmf_smaller_hit_target"

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "support_subaddress_settings"

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "disable_mobile_data_settings"

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "network_selection_delay"

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "allow_select_network_mode"

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "support_conference_call"

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "support_call_transfer"

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "support_merge_call"

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "support_all_rat"

    const/16 v41, 0x0

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "extra_volume"

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "default_noise_reduction"

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "support_voice_eq_bt_headset"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v39

    if-nez v39, :cond_1b

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v39

    if-eqz v39, :cond_6f

    :cond_1b
    const/16 v39, 0x1

    :goto_21
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "noise_suppression"

    const/16 v41, 0x0

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "noise_suppression_support_speaker"

    const/16 v41, 0x0

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "enable_noise_reduction_in_wbamr"

    const/16 v41, 0x0

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "force_initial_audiostate"

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "extra_ringer"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->hasIlluminanceSensor()Z

    move-result v39

    if-eqz v39, :cond_70

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v39

    if-nez v39, :cond_1c

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v39

    if-eqz v39, :cond_70

    :cond_1c
    const/16 v39, 0x1

    :goto_22
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "extra_ringer_default_on"

    const/16 v41, 0x0

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "vt_audio_processing_on_ap"

    const/16 v41, 0x0

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "psvt_audio_processing_on_ap"

    const-string v41, "IMS_HYBRID_CMC"

    const-string v42, "IMS_HYBRID_CMC"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_1d

    const-string v41, "IMS_HYBRID_IMC"

    const-string v42, "IMS_HYBRID_CMC"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_1d

    :cond_1d
    const/16 v41, 0x0

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "disable_autoanswer_in_silent_and_earjackmode"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v41

    const-string v42, "CscFeature_VoiceCall_DisableAutoAnswerInSilentNEarjactMode"

    invoke-virtual/range {v41 .. v42}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "disable_button_sound_effects"

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "audio_vt_support_by_ap"

    const/16 v41, 0x0

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "write_sleep_checking_file"

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->platform:Ljava/lang/String;

    if-eqz v39, :cond_71

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->platform:Ljava/lang/String;

    const-string v42, "apq8064"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_71

    const/16 v39, 0x1

    :goto_23
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "disappear_ussd_cancel_popup"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v41

    const-string v42, "CscFeature_VoiceCall_DisableUssdCancelPopup"

    invoke-virtual/range {v41 .. v42}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "beep_vibration_for_ussd"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v41

    const-string v42, "CscFeature_VoiceCall_EnableBeepVibration4UssdAlert"

    invoke-virtual/range {v41 .. v42}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "keypad_type_to_phone_for_ussd"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v41

    const-string v42, "CscFeature_VoiceCall_KeypadTypeToDigit4UssdInput"

    invoke-virtual/range {v41 .. v42}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "geo_description_disable"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v41

    const-string v42, "CscFeature_VoiceCall_DisableGeoDescription"

    invoke-virtual/range {v41 .. v42}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "in_call_menu_message_enable"

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "in_call_menu_contact_enable"

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "in_call_menu_memo_enable"

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "ha3g"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_72

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "hlte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_72

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "h3g"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_72

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "htdlte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_72

    const/16 v39, 0x1

    :goto_24
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "support_mirror_link"

    sget-object v41, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "a3ulte"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "support_easy_mode"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isNobleProject()Z

    move-result v39

    if-nez v39, :cond_73

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isZeroProject()Z

    move-result v39

    if-nez v39, :cond_73

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isNovel()Z

    move-result v39

    if-nez v39, :cond_73

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isA8Project()Z

    move-result v39

    if-nez v39, :cond_73

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isPhilippeProject()Z

    move-result v39

    if-nez v39, :cond_73

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "s5neolte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_73

    const/16 v39, 0x1

    :goto_25
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "support_easy_mode_enhanced"

    const-string v39, "support_easy_mode"

    invoke-static/range {v39 .. v39}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_74

    const-string v39, "VZW"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_74

    const/16 v39, 0x1

    :goto_26
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "support_hover_ui"

    sget-object v41, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-static/range {v41 .. v41}, Lcom/android/services/telephony/common/PhoneFeature;->isSupportHoveringUI(Landroid/content/Context;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "support_hands_free_mode_incoming_call"

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "ha3g"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-eqz v39, :cond_75

    const-string v39, "XXV"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_1e

    const-string v39, "XEV"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_75

    :cond_1e
    const/16 v39, 0x1

    :goto_27
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "force_turn_on_screen_for_new_incoming"

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "vt_dual_camera"

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "jactivelte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_76

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "a7lte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_76

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "a7alte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_76

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "a73g"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_76

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "a3ulte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_76

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "a5ulte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_76

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "a5lte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_76

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "a53g"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_76

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "e53g"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_76

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "hllte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_76

    const/16 v39, 0x1

    :goto_28
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "video_call_not_support"

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-static/range {v39 .. v39}, Lcom/android/services/telephony/common/PhoneFeature;->hasVTSupport(Landroid/content/Context;)Z

    move-result v39

    if-nez v39, :cond_77

    const/16 v39, 0x1

    :goto_29
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "vt_new_theme_animation"

    sget-object v41, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "hllte"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "vt_sec_phone_upgraded_ui"

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "ja3g"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_1f

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "jflte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_1f

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "jactivelte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_1f

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "ha3g"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_1f

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "h3g"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_1f

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "hlte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_1f

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "ks01lte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_1f

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "htdlte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_1f

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "jfvelte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_1f

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "hllte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-eqz v39, :cond_78

    :cond_1f
    const/16 v39, 0x1

    :goto_2a
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "vt_call_fail_fallback"

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "ja3g"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_20

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "jfveltexx"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_20

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "jfvelteub"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_20

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "jflte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_20

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "jactivelte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_20

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "ks01lte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-eqz v39, :cond_79

    :cond_20
    const/16 v39, 0x1

    :goto_2b
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "not_support_decoration"

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "trlte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_21

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "trelte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_21

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "tre3g"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_21

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "tblte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_21

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "klteactivexx"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_21

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "trhplte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_21

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "a7lte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_21

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "m2altexx"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_21

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "a7alte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_21

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "a3ulte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_21

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "a5ulte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_21

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "a53g"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_21

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "e53g"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_21

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "a5lte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-eqz v39, :cond_7a

    :cond_21
    const/16 v39, 0x1

    :goto_2c
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "vt_left_keypad_enable_ui"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v39

    if-nez v39, :cond_22

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v39

    if-eqz v39, :cond_7b

    :cond_22
    const/16 v39, 0x1

    :goto_2d
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "support_vt_on_pop_up_window"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTProject()Z

    move-result v39

    if-nez v39, :cond_23

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isZeroProject()Z

    move-result v39

    if-nez v39, :cond_23

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v39

    if-eqz v39, :cond_7c

    :cond_23
    const/16 v39, 0x1

    :goto_2e
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "video_call_remove_record_button"

    const-string v41, "record,capture"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v42

    const-string v43, "CscFeature_VT_ConfigPrivacyPolicy"

    invoke-virtual/range {v42 .. v43}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "feature_multisim"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isMultiSimConfigDsdsEnabled()Z

    move-result v39

    if-nez v39, :cond_24

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isMultiSimConfigDsdaEnabled()Z

    move-result v39

    if-eqz v39, :cond_7d

    :cond_24
    const/16 v39, 0x1

    :goto_2f
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "feature_multisim_dsds"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isMultiSimConfigDsdsEnabled()Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "feature_multisim_dsda"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isMultiSimConfigDsdaEnabled()Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "feature_multisim_emergency_call_cp_limitation"

    const-string v41, "feature_multisim"

    invoke-static/range {v41 .. v41}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "feature_multisim_preferred_sim"

    const-string v41, "feature_multisim"

    invoke-static/range {v41 .. v41}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "has_two_modem"

    const-string v39, "feature_multisim"

    invoke-static/range {v39 .. v39}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_7e

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isMultiSimTwoModem()Z

    move-result v39

    if-eqz v39, :cond_7e

    const/16 v39, 0x1

    :goto_30
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "qcom_cross_mapping"

    const-string v41, "feature_multisim"

    invoke-static/range {v41 .. v41}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_25

    :cond_25
    const/16 v41, 0x0

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "flash_notification"

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v41

    const-string v42, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_FLASH_NOTIFICATION"

    invoke-virtual/range {v41 .. v42}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "support_motion"

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v41

    const-string v42, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION"

    invoke-virtual/range {v41 .. v42}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "disable_format_number"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v41

    const-string v42, "CscFeature_Common_DisablePhoneNumberFormatting"

    invoke-virtual/range {v41 .. v42}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "personal_vibration"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->hasVibratorFeature()Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "support_bottom_menu_hw_key"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v39

    if-nez v39, :cond_26

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v39

    if-nez v39, :cond_26

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "hllte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_7f

    :cond_26
    const/16 v39, 0x1

    :goto_31
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "hide_buttons_on_menu_click"

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "ha3g"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_27

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "ja3g"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-eqz v39, :cond_80

    :cond_27
    const/16 v39, 0x1

    :goto_32
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "hide_phone_type_icon"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v39

    if-nez v39, :cond_28

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v39

    if-eqz v39, :cond_81

    :cond_28
    const/16 v39, 0x1

    :goto_33
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "use_action_memo_duringcall"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTProject()Z

    move-result v39

    if-nez v39, :cond_29

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v39

    if-nez v39, :cond_29

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->hasSPenFeature()Z

    move-result v39

    if-nez v39, :cond_29

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isNobleProject()Z

    move-result v39

    if-eqz v39, :cond_82

    :cond_29
    const/16 v39, 0x1

    :goto_34
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "use_memo_string"

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "lentislte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_2a

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "klte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_2a

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "kccat6xx"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_2a

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "slte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_2a

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "milletlte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_2a

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "millet3g"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_2a

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "matisse"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_2a

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "e53g"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_2a

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "mega2lte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_2a

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "kminilte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-eqz v39, :cond_83

    :cond_2a
    const/16 v39, 0x1

    :goto_35
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "support_period_mark"

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "support_wave_effect"

    const/16 v41, 0x0

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "display_default_arrow_for_cover"

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "hw_home_key"

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-virtual/range {v39 .. v39}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    const v42, 0x1120060

    move-object/from16 v0, v39

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v39

    if-nez v39, :cond_84

    const/16 v39, 0x1

    :goto_36
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "mobile_data_popup"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v41

    const-string v42, "CscFeature_Setting_EnablePromptPopupWhenActivatingDataConnection"

    invoke-virtual/range {v41 .. v42}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "gesture_callaccept"

    const-string v41, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static/range {v41 .. v41}, Lcom/android/services/telephony/common/PhoneFeature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "gesture_callaccept_k_device"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isKProject()Z

    move-result v39

    if-eqz v39, :cond_85

    const-string v39, "gesture_callaccept"

    invoke-static/range {v39 .. v39}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_85

    const/16 v39, 0x1

    :goto_37
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "speaker_on_by_air_gesture"

    const-string v39, "gesture_callaccept"

    invoke-static/range {v39 .. v39}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_86

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v39

    if-nez v39, :cond_2b

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v39

    if-eqz v39, :cond_86

    :cond_2b
    const/16 v39, 0x1

    :goto_38
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "turn_on_speaker_by_proxisensor"

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "support_in_call_status_setting"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "disable_incoming_call_popup_during_camera"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v39

    if-nez v39, :cond_2c

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v39

    if-nez v39, :cond_2c

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v39

    const-string v42, "CscFeature_Camera_EnableCameraDuringCall"

    const/16 v43, 0x1

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v39

    if-nez v39, :cond_87

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTablet()Z

    move-result v39

    if-nez v39, :cond_87

    :cond_2c
    const/16 v39, 0x1

    :goto_39
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "support_outgoing_call_popup_service"

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "support_onehand_operation"

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "support_mobile_keyboard"

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "is_phone_osup"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "is_incallui_app"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isZeroProject()Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "support_second_screen"

    sget-object v41, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-virtual/range {v41 .. v41}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v41

    const-string v42, "com.sec.feature.cocktailbar"

    invoke-virtual/range {v41 .. v42}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "disable_change_network_mode_for_none_bolt"

    const-string v39, "feature_multisim"

    invoke-static/range {v39 .. v39}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_88

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v39

    const-string v42, "CscFeature_RIL_ConfigPsOnlyList"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_88

    const/16 v39, 0x1

    :goto_3a
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "force_lte_for_bolt_sim_after_device_reboot_complete"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v39

    const-string v42, "CscFeature_RIL_ConfigPsOnlyList"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_89

    const/16 v39, 0x1

    :goto_3b
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "disable_call"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v39

    const-string v42, "CscFeature_RIL_ConfigPsOnlyList"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_8a

    const/16 v39, 0x1

    :goto_3c
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "clear_cover_increase_threshold"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "clear_cover_small_ui_support"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "clear_cover_ui_support"

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "ha3g"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_2d

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "hlte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_2d

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "h3g"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_2d

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "htdlte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-eqz v39, :cond_8b

    :cond_2d
    const/16 v39, 0x1

    :goto_3d
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "clear_cover_ui_support_for_kmodel"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isKProject()Z

    move-result v39

    if-eqz v39, :cond_8c

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "lentislte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_8c

    const/16 v39, 0x1

    :goto_3e
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "slte_cover_gui"

    sget-object v41, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "slte"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "incoming_call_popup_osup"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v39

    if-nez v39, :cond_2e

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "hllte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_2e

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "hl3g"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_2e

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "t0lte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_2e

    const-string v39, "js01ltedcm"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_8d

    :cond_2e
    const/16 v39, 0x1

    :goto_3f
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "mini_popup_call_ui"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTProject()Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "samsung_screen_timeout_incall"

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "hold_strip_same_as_phone_os_up"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v39

    if-nez v39, :cond_2f

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v39

    if-nez v39, :cond_2f

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "hllte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_2f

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "hl3g"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_2f

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "t0lte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_8e

    :cond_2f
    const/16 v39, 0x1

    :goto_40
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "h_and_j_as_phone_os_up"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v39

    if-nez v39, :cond_30

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v39

    if-nez v39, :cond_30

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "hllte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_30

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "hl3g"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_30

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "t0lte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_8f

    :cond_30
    const/16 v39, 0x1

    :goto_41
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "ll_phone_os_up"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v39

    if-nez v39, :cond_31

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v39

    if-nez v39, :cond_31

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isKProject()Z

    move-result v39

    if-nez v39, :cond_31

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTProject()Z

    move-result v39

    if-eqz v39, :cond_90

    :cond_31
    const/16 v39, 0x1

    :goto_42
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "incoming_screen_on_immediately"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v39

    if-nez v39, :cond_32

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v39

    if-nez v39, :cond_32

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTProject()Z

    move-result v39

    if-nez v39, :cond_32

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isKProject()Z

    move-result v39

    if-nez v39, :cond_32

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTablet()Z

    move-result v39

    if-eqz v39, :cond_91

    :cond_32
    const/16 v39, 0x1

    :goto_43
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "network_rat_info_during_plmn_selection"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v41

    const-string v42, "CscFeature_RIL_UseRatInfoDuringPlmnSelection"

    invoke-virtual/range {v41 .. v42}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "network_mode_list_lte"

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "hide_mini_call_icon"

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "ha3g"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_33

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "hlte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_33

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "h3g"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_33

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "htdlte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_33

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v39

    if-nez v39, :cond_33

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "hllte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_33

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "hl3g"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_33

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "t0lte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_92

    :cond_33
    const/16 v39, 0x1

    :goto_44
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v39, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-direct/range {v39 .. v39}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;-><init>()V

    sput-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "barge_in"

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    sget v42, Lcom/android/services/telephony/common/PhoneFeature;->IncomingBargin_command:I

    move-object/from16 v0, v39

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isBargeInEnabled(I)Z

    move-result v39

    if-eqz v39, :cond_93

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "gts210lte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_93

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "gts28lte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_93

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "a3ulte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_93

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "a5"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_93

    const/16 v39, 0x1

    :goto_45
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "ringtone_escalating"

    const/16 v41, 0x0

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "audio_global_effect"

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "use_callstate_audio_param"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isNobleProject()Z

    move-result v39

    if-nez v39, :cond_34

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "zenlte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-eqz v39, :cond_94

    :cond_34
    const/16 v39, 0x1

    :goto_46
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "support_rotation_only_camera"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isNobleProject()Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "prevent_duplicated_popup_msg"

    const/16 v41, 0x0

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "voip_interworking"

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v39, "SIN"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "sin_volte_ui"

    const-string v39, "common_volte"

    invoke-static/range {v39 .. v39}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_95

    if-eqz v24, :cond_95

    const/16 v39, 0x1

    :goto_47
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v39, "STH"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "sth_volte_ui"

    const-string v39, "common_volte"

    invoke-static/range {v39 .. v39}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_96

    if-eqz v25, :cond_96

    const/16 v39, 0x1

    :goto_48
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v39, "XSP"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "xsp_volte_ui"

    const-string v39, "common_volte"

    invoke-static/range {v39 .. v39}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_97

    if-eqz v34, :cond_97

    const/16 v39, 0x1

    :goto_49
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v39, "MM1"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "mm1_volte_ui"

    const-string v39, "common_volte"

    invoke-static/range {v39 .. v39}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_98

    if-eqz v15, :cond_98

    const/16 v39, 0x1

    :goto_4a
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v39, "THL"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "thl_volte_ui"

    const-string v39, "common_volte"

    invoke-static/range {v39 .. v39}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_99

    if-eqz v29, :cond_99

    const/16 v39, 0x1

    :goto_4b
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v39, "EVR"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v39, "TMU"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "evr_volte_ui"

    const-string v39, "common_volte"

    invoke-static/range {v39 .. v39}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_9a

    if-eqz v11, :cond_9a

    const/16 v39, 0x1

    :goto_4c
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "tmu_volte_ui"

    const-string v39, "common_volte"

    invoke-static/range {v39 .. v39}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_9b

    if-eqz v30, :cond_9b

    const/16 v39, 0x1

    :goto_4d
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "support_both_csps_vt"

    const-string v39, "common_volte"

    invoke-static/range {v39 .. v39}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_9c

    if-eqz v11, :cond_9c

    const/16 v39, 0x1

    :goto_4e
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v39, "VD2"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "support_both_csps_vt"

    const-string v39, "common_volte"

    invoke-static/range {v39 .. v39}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_9d

    if-eqz v31, :cond_9d

    const/16 v39, 0x1

    :goto_4f
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v39, "PHN"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "phn_volte_ui"

    const-string v39, "common_volte"

    invoke-static/range {v39 .. v39}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_9e

    if-eqz v21, :cond_9e

    const/16 v39, 0x1

    :goto_50
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v39, "BMA"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "bma_volte_ui"

    const-string v39, "common_volte"

    invoke-static/range {v39 .. v39}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_9f

    if-eqz v7, :cond_9f

    const/16 v39, 0x1

    :goto_51
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v11, :cond_35

    const-string v39, "kccat6xx"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_35

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "remove_volte_outgoing_calltype_menu"

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_35
    const-string v39, "sin_volte_ui"

    invoke-static/range {v39 .. v39}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_36

    const-string v39, "sth_volte_ui"

    invoke-static/range {v39 .. v39}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_36

    const-string v39, "xsp_volte_ui"

    invoke-static/range {v39 .. v39}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_36

    const-string v39, "mm1_volte_ui"

    invoke-static/range {v39 .. v39}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_a0

    :cond_36
    const/16 v27, 0x1

    :goto_52
    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "singapore_volte_ui"

    if-nez v27, :cond_37

    const-string v39, "OMN"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_a1

    :cond_37
    const/16 v39, 0x1

    :goto_53
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "not_support_volte_merge"

    const-string v39, "common_volte"

    invoke-static/range {v39 .. v39}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_a2

    if-eqz v24, :cond_a2

    const/16 v39, 0x1

    :goto_54
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v39, "NEE"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "nee_volte_ui"

    const-string v39, "common_volte"

    invoke-static/range {v39 .. v39}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_a3

    if-eqz v16, :cond_a3

    const/16 v39, 0x1

    :goto_55
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "handle_sip_error_code"

    const-string v39, "common_volte"

    invoke-static/range {v39 .. v39}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_a4

    if-eqz v16, :cond_a4

    const/16 v39, 0x1

    :goto_56
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v39, "SIN"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_38

    const-string v39, "STH"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_38

    const-string v39, "XSP"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_38

    const-string v39, "MM1"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_a5

    :cond_38
    const/16 v26, 0x1

    :goto_57
    if-nez v26, :cond_39

    const-string v39, "OMN"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_39

    const-string v39, "XSG"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_a6

    :cond_39
    const/16 v18, 0x1

    :goto_58
    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "not_support_ims_conference_manage"

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v19, 0x1

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "not_support_ims_conference_split"

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v26, :cond_3a

    const-string v39, "OMN"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_3a

    const-string v39, "XSG"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_a7

    :cond_3a
    const/16 v17, 0x1

    :goto_59
    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "not_support_ims_conference_disconnect"

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v11, :cond_3b

    if-eqz v30, :cond_a8

    :cond_3b
    const/16 v20, 0x1

    :goto_5a
    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "not_support_transfer_button_on_vowifi"

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v39, "SWC"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "incoming_call_widget_for_volte"

    const-string v39, "common_volte"

    invoke-static/range {v39 .. v39}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_a9

    if-eqz v28, :cond_a9

    const/16 v39, 0x1

    :goto_5b
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v39, "PHN"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_3c

    const-string v39, "NEE"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_aa

    :cond_3c
    const/4 v10, 0x1

    :goto_5c
    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "ee_volte_ui"

    if-nez v10, :cond_3d

    const-string v39, "DTM"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_3d

    const-string v39, "DTR"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_3d

    const-string v39, "DCZ"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_3d

    const-string v39, "TMZ"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_3d

    const-string v39, "VIA"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_3d

    const-string v39, "OMN"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_ab

    :cond_3d
    const/16 v39, 0x1

    :goto_5d
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "support_both_csps_vt"

    const-string v39, "common_volte"

    invoke-static/range {v39 .. v39}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_ac

    if-eqz v10, :cond_ac

    const/16 v39, 0x1

    :goto_5e
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "add_vt_hold_in_menu"

    if-nez v10, :cond_3e

    const-string v39, "VIA"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_ad

    :cond_3e
    const/16 v39, 0x1

    :goto_5f
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "handle_sip_error_code"

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "feature_dt"

    invoke-virtual/range {v39 .. v40}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/Boolean;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "disable_hd_icon"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "display_hd_icon"

    const-string v39, "enabled"

    invoke-static/range {v39 .. v39}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_3f

    if-eqz v5, :cond_40

    :cond_3f
    if-eqz v32, :cond_ae

    :cond_40
    const/16 v39, 0x1

    :goto_60
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v39, "XSG"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "xsg_volte_ui"

    const-string v39, "common_volte"

    invoke-static/range {v39 .. v39}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_af

    if-eqz v33, :cond_af

    const/16 v39, 0x1

    :goto_61
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v39, "BOG"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v39, "SEB"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    const-string v39, "SFR"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    const-string v39, "EVR"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_41

    const-string v39, "TMU"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_41

    const-string v39, "VOD"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_41

    const-string v39, "VD2"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_41

    const-string v39, "ATL"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_b0

    :cond_41
    const/16 v37, 0x1

    :goto_62
    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "show_vowifi_endcall_button"

    invoke-static/range {v37 .. v37}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "reduce_waste_point"

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "start_incallui_bind_bootup"

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "keep_incallui_bind_service"

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "delay_activity_finish"

    const-string v39, "kccat6xx"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_b1

    const/16 v39, 0x1

    :goto_63
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "close_system_dialog_in_call"

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "support_penwindow_callscreen"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v39

    if-nez v39, :cond_42

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTProject()Z

    move-result v39

    if-nez v39, :cond_42

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isZeroProject()Z

    move-result v39

    if-nez v39, :cond_42

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isNobleProject()Z

    move-result v39

    if-nez v39, :cond_42

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "a8lte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_42

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "a8elte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-eqz v39, :cond_b2

    :cond_42
    const/16 v39, 0x1

    :goto_64
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "support_penwindow_rotation"

    const-string v39, "support_penwindow_callscreen"

    invoke-static/range {v39 .. v39}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_b3

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isNobleProject()Z

    move-result v39

    if-eqz v39, :cond_b3

    const/16 v39, 0x1

    :goto_65
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "support_swis"

    const/16 v41, 0x0

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "show_switch_icon_in_button"

    if-eqz v12, :cond_b4

    const-string v39, "XFV"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_b4

    const-string v39, "support_swis"

    invoke-static/range {v39 .. v39}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_b4

    const/16 v39, 0x1

    :goto_66
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "show_switch_icon_on_call_card"

    if-eqz v12, :cond_b5

    const-string v39, "XFV"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_b5

    const-string v39, "support_swis"

    invoke-static/range {v39 .. v39}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_b5

    const/16 v39, 0x1

    :goto_67
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "support_help_easy_mode"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v39

    if-nez v39, :cond_b6

    const/16 v39, 0x1

    :goto_68
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "support_memo_uuid_for_calllog"

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v27, :cond_43

    const-string v39, "NEE"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_43

    const-string v39, "SWC"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_43

    const-string v39, "TMB"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_43

    const-string v39, "RWC"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_43

    const-string v39, "VIA"

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_b7

    :cond_43
    const/4 v6, 0x1

    :goto_69
    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "enable_volte_hold_tone"

    if-eqz v13, :cond_b8

    if-nez v6, :cond_b8

    const/16 v39, 0x1

    :goto_6a
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "zero_emergency_dialer_layout"

    const-string v41, "menu_simplification"

    invoke-static/range {v41 .. v41}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "emergency_dialer_digits_layout_params"

    const-string v39, "zero_emergency_dialer_layout"

    invoke-static/range {v39 .. v39}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_b9

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isNobleProject()Z

    move-result v39

    if-nez v39, :cond_b9

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "zen"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_b9

    const/16 v39, 0x1

    :goto_6b
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "zero_ipcall_settings_layout"

    const-string v41, "menu_simplification"

    invoke-static/range {v41 .. v41}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "people_stripe"

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v39

    const-string v42, "SEC_FLOATING_FEATURE_COMMON_CONFIG_EDGE_STRIPE"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getInteger(Ljava/lang/String;)I

    move-result v39

    if-nez v39, :cond_ba

    const/16 v39, 0x1

    :goto_6c
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "support_cdma_dun"

    const/16 v41, 0x0

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "enhanced_driving_mode"

    const-string v41, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DRIVING_MODE"

    invoke-static/range {v41 .. v41}, Lcom/android/services/telephony/common/PhoneFeature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "provider_name_display_disable"

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "prompt_to_data_roaming"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v41

    const-string v42, "CscFeature_RIL_PromptToDataRoam"

    invoke-virtual/range {v41 .. v42}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "zero_support_selection_all_text"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isZeroProject()Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "support_sview_cover_photo_id"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v39

    if-nez v39, :cond_44

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTProject()Z

    move-result v39

    if-eqz v39, :cond_bb

    :cond_44
    const/16 v39, 0x1

    :goto_6d
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "launch_recent_call"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isZeroProject()Z

    move-result v39

    if-nez v39, :cond_45

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isNobleProject()Z

    move-result v39

    if-eqz v39, :cond_bc

    :cond_45
    const/16 v39, 0x1

    :goto_6e
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "call_control_by_sim_feature"

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "common_volte_voda"

    const-string v39, "ATL"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_46

    const-string v39, "OMN"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_46

    const-string v39, "VD2"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_46

    const-string v39, "VOD"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_bd

    :cond_46
    const/16 v39, 0x1

    :goto_6f
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "support_folder_hardkey"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->hasFolderTypeFeature()Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "support_dialpad_by_hardkey"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isNovel()Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "support_folder_dual_lcd"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->hasFolderTypeFeature()Z

    move-result v39

    if-eqz v39, :cond_be

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->hasDualLcdFeature()Z

    move-result v39

    if-eqz v39, :cond_be

    const/16 v39, 0x1

    :goto_70
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "support_folder_single_lcd"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->hasFolderTypeFeature()Z

    move-result v39

    if-eqz v39, :cond_bf

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->hasDualLcdFeature()Z

    move-result v39

    if-nez v39, :cond_bf

    const/16 v39, 0x1

    :goto_71
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "not_support_end_button"

    const-string v39, "support_folder_hardkey"

    invoke-static/range {v39 .. v39}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_c0

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isNovel()Z

    move-result v39

    if-eqz v39, :cond_c0

    const/16 v39, 0x1

    :goto_72
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "not_support_easy_incoming_widget"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isNovel()Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "start_ota_screen_directly"

    const-string v41, "trltespr"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "show_caller_info_card_for_l_osup"

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "chagallhlte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_47

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v39

    if-eqz v39, :cond_c1

    :cond_47
    const/16 v39, 0x1

    :goto_73
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "not_support_switch_button"

    const-string v41, "XFV"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "not_support_addcall_button"

    const-string v39, "XFV"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_48

    const-string v39, "SFV"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_c2

    :cond_48
    const/16 v39, 0x1

    :goto_74
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "not_support_merge_button"

    const-string v41, "XFV"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "call_details_for_hd_icon"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isKProject()Z

    move-result v39

    if-eqz v39, :cond_c3

    if-eqz v13, :cond_c3

    const-string v39, "VIA"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_49

    const-string v39, "XFV"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_49

    const-string v39, "XSG"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_49

    const-string v39, "AUT"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_49

    const-string v39, "SWC"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_c3

    :cond_49
    const/16 v39, 0x1

    :goto_75
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "support_hide_conference_manager_menu"

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "feature_multisim_preferred_sim_old"

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v39

    const-string v42, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_SIM_MGR"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getInteger(Ljava/lang/String;)I

    move-result v39

    const/16 v42, 0x1

    move/from16 v0, v39

    move/from16 v1, v42

    if-ge v0, v1, :cond_c4

    const/16 v39, 0x1

    :goto_76
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "network_mode_not_support_gsm"

    sget-object v41, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "klimtltevl"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "sim_account_popup_remove_delay"

    sget-object v41, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "a7ltexx"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "config_hide_status_bar"

    const-string v41, "LAND"

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v42

    const-string v43, "SEC_FLOATING_FEATURE_COMMON_CONFIG_HIDE_STATUS_BAR"

    invoke-virtual/range {v42 .. v43}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "network_mode_spinner"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isNobleProject()Z

    move-result v39

    if-nez v39, :cond_4a

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "zenlte"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-eqz v39, :cond_c5

    :cond_4a
    const/16 v39, 0x1

    :goto_77
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "not_support_merge_between_voice_video"

    const-string v41, "VIA"

    sget-object v42, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "disable_sim_label_display"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isNobleProject()Z

    move-result v39

    if-nez v39, :cond_4b

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "zen"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_c6

    :cond_4b
    const/16 v39, 0x1

    :goto_78
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "linkedin_integration"

    sget-object v41, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "gts2"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "not_support_drive_link"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isNobleProject()Z

    move-result v39

    if-nez v39, :cond_4c

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v42, "zen"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_c7

    :cond_4c
    const/16 v39, 0x1

    :goto_79
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "zero_mass_project"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isNovel()Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v40, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v41, "common_volte_trial"

    const-string v39, "common_volte"

    invoke-static/range {v39 .. v39}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_c8

    if-nez v8, :cond_4d

    if-nez v16, :cond_4d

    if-nez v22, :cond_4d

    if-nez v23, :cond_4d

    if-eqz v33, :cond_c8

    :cond_4d
    const/16 v39, 0x1

    :goto_7a
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_4e
    const/16 v32, 0x0

    goto/16 :goto_0

    :cond_4f
    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_50
    const/16 v39, 0x0

    goto/16 :goto_2

    :cond_51
    const/16 v39, 0x0

    goto/16 :goto_3

    :cond_52
    const/16 v39, 0x0

    goto/16 :goto_4

    :cond_53
    const/16 v39, 0x0

    goto/16 :goto_5

    :cond_54
    const/16 v39, 0x0

    goto/16 :goto_6

    :cond_55
    const/16 v39, 0x0

    goto/16 :goto_7

    :cond_56
    const/16 v39, 0x0

    goto/16 :goto_8

    :cond_57
    const/16 v38, 0x0

    goto/16 :goto_9

    :cond_58
    const/16 v39, 0x0

    goto/16 :goto_a

    :cond_59
    const/16 v39, 0x0

    goto/16 :goto_b

    :cond_5a
    const/16 v39, 0x0

    goto/16 :goto_c

    :cond_5b
    const/16 v39, 0x0

    goto/16 :goto_d

    :cond_5c
    const/16 v39, 0x0

    goto/16 :goto_e

    :cond_5d
    const/16 v39, 0x0

    goto/16 :goto_f

    :cond_5e
    const/4 v9, 0x0

    goto/16 :goto_10

    :cond_5f
    const/16 v39, 0x0

    goto/16 :goto_11

    :cond_60
    const/16 v39, 0x0

    goto/16 :goto_12

    :cond_61
    const/16 v39, 0x0

    goto/16 :goto_13

    :cond_62
    const/16 v39, 0x0

    goto/16 :goto_14

    :cond_63
    const/16 v39, 0x0

    goto/16 :goto_15

    :cond_64
    const/16 v39, 0x0

    goto/16 :goto_16

    :cond_65
    const/16 v39, 0x0

    goto/16 :goto_17

    :cond_66
    const/16 v39, 0x0

    goto/16 :goto_18

    :cond_67
    const/16 v39, 0x0

    goto/16 :goto_19

    :cond_68
    const/16 v39, 0x0

    goto/16 :goto_1a

    :cond_69
    const/16 v39, 0x0

    goto/16 :goto_1b

    :cond_6a
    const/16 v39, 0x0

    goto/16 :goto_1c

    :cond_6b
    :try_start_2
    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "cust_network_sel_menu4_lteonly"

    const-string v41, "LTEONLY"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v42

    const-string v43, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual/range {v42 .. v43}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1d

    :catch_0
    move-exception v36

    sget-object v39, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v40, "cust_network_sel_menu4_lteonly"

    const-string v41, "LTEONLY"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v42

    const-string v43, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual/range {v42 .. v43}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1d

    :cond_6c
    const/16 v39, 0x0

    goto/16 :goto_1e

    :cond_6d
    const/16 v39, 0x0

    goto/16 :goto_1f

    :cond_6e
    const/16 v39, 0x0

    goto/16 :goto_20

    :cond_6f
    const/16 v39, 0x0

    goto/16 :goto_21

    :cond_70
    const/16 v39, 0x0

    goto/16 :goto_22

    :cond_71
    const/16 v39, 0x0

    goto/16 :goto_23

    :cond_72
    const/16 v39, 0x0

    goto/16 :goto_24

    :cond_73
    const/16 v39, 0x0

    goto/16 :goto_25

    :cond_74
    const/16 v39, 0x0

    goto/16 :goto_26

    :cond_75
    const/16 v39, 0x0

    goto/16 :goto_27

    :cond_76
    const/16 v39, 0x0

    goto/16 :goto_28

    :cond_77
    const/16 v39, 0x0

    goto/16 :goto_29

    :cond_78
    const/16 v39, 0x0

    goto/16 :goto_2a

    :cond_79
    const/16 v39, 0x0

    goto/16 :goto_2b

    :cond_7a
    const/16 v39, 0x0

    goto/16 :goto_2c

    :cond_7b
    const/16 v39, 0x0

    goto/16 :goto_2d

    :cond_7c
    const/16 v39, 0x0

    goto/16 :goto_2e

    :cond_7d
    const/16 v39, 0x0

    goto/16 :goto_2f

    :cond_7e
    const/16 v39, 0x0

    goto/16 :goto_30

    :cond_7f
    const/16 v39, 0x0

    goto/16 :goto_31

    :cond_80
    const/16 v39, 0x0

    goto/16 :goto_32

    :cond_81
    const/16 v39, 0x0

    goto/16 :goto_33

    :cond_82
    const/16 v39, 0x0

    goto/16 :goto_34

    :cond_83
    const/16 v39, 0x0

    goto/16 :goto_35

    :cond_84
    const/16 v39, 0x0

    goto/16 :goto_36

    :cond_85
    const/16 v39, 0x0

    goto/16 :goto_37

    :cond_86
    const/16 v39, 0x0

    goto/16 :goto_38

    :cond_87
    const/16 v39, 0x0

    goto/16 :goto_39

    :cond_88
    const/16 v39, 0x0

    goto/16 :goto_3a

    :cond_89
    const/16 v39, 0x0

    goto/16 :goto_3b

    :cond_8a
    const/16 v39, 0x0

    goto/16 :goto_3c

    :cond_8b
    const/16 v39, 0x0

    goto/16 :goto_3d

    :cond_8c
    const/16 v39, 0x0

    goto/16 :goto_3e

    :cond_8d
    const/16 v39, 0x0

    goto/16 :goto_3f

    :cond_8e
    const/16 v39, 0x0

    goto/16 :goto_40

    :cond_8f
    const/16 v39, 0x0

    goto/16 :goto_41

    :cond_90
    const/16 v39, 0x0

    goto/16 :goto_42

    :cond_91
    const/16 v39, 0x0

    goto/16 :goto_43

    :cond_92
    const/16 v39, 0x0

    goto/16 :goto_44

    :cond_93
    const/16 v39, 0x0

    goto/16 :goto_45

    :cond_94
    const/16 v39, 0x0

    goto/16 :goto_46

    :cond_95
    const/16 v39, 0x0

    goto/16 :goto_47

    :cond_96
    const/16 v39, 0x0

    goto/16 :goto_48

    :cond_97
    const/16 v39, 0x0

    goto/16 :goto_49

    :cond_98
    const/16 v39, 0x0

    goto/16 :goto_4a

    :cond_99
    const/16 v39, 0x0

    goto/16 :goto_4b

    :cond_9a
    const/16 v39, 0x0

    goto/16 :goto_4c

    :cond_9b
    const/16 v39, 0x0

    goto/16 :goto_4d

    :cond_9c
    const/16 v39, 0x0

    goto/16 :goto_4e

    :cond_9d
    const/16 v39, 0x0

    goto/16 :goto_4f

    :cond_9e
    const/16 v39, 0x0

    goto/16 :goto_50

    :cond_9f
    const/16 v39, 0x0

    goto/16 :goto_51

    :cond_a0
    const/16 v27, 0x0

    goto/16 :goto_52

    :cond_a1
    const/16 v39, 0x0

    goto/16 :goto_53

    :cond_a2
    const/16 v39, 0x0

    goto/16 :goto_54

    :cond_a3
    const/16 v39, 0x0

    goto/16 :goto_55

    :cond_a4
    const/16 v39, 0x0

    goto/16 :goto_56

    :cond_a5
    const/16 v26, 0x0

    goto/16 :goto_57

    :cond_a6
    const/16 v18, 0x0

    goto/16 :goto_58

    :cond_a7
    const/16 v17, 0x0

    goto/16 :goto_59

    :cond_a8
    const/16 v20, 0x0

    goto/16 :goto_5a

    :cond_a9
    const/16 v39, 0x0

    goto/16 :goto_5b

    :cond_aa
    const/4 v10, 0x0

    goto/16 :goto_5c

    :cond_ab
    const/16 v39, 0x0

    goto/16 :goto_5d

    :cond_ac
    const/16 v39, 0x0

    goto/16 :goto_5e

    :cond_ad
    const/16 v39, 0x0

    goto/16 :goto_5f

    :cond_ae
    const/16 v39, 0x0

    goto/16 :goto_60

    :cond_af
    const/16 v39, 0x0

    goto/16 :goto_61

    :cond_b0
    const/16 v37, 0x0

    goto/16 :goto_62

    :cond_b1
    const/16 v39, 0x0

    goto/16 :goto_63

    :cond_b2
    const/16 v39, 0x0

    goto/16 :goto_64

    :cond_b3
    const/16 v39, 0x0

    goto/16 :goto_65

    :cond_b4
    const/16 v39, 0x0

    goto/16 :goto_66

    :cond_b5
    const/16 v39, 0x0

    goto/16 :goto_67

    :cond_b6
    const/16 v39, 0x0

    goto/16 :goto_68

    :cond_b7
    const/4 v6, 0x0

    goto/16 :goto_69

    :cond_b8
    const/16 v39, 0x0

    goto/16 :goto_6a

    :cond_b9
    const/16 v39, 0x0

    goto/16 :goto_6b

    :cond_ba
    const/16 v39, 0x0

    goto/16 :goto_6c

    :cond_bb
    const/16 v39, 0x0

    goto/16 :goto_6d

    :cond_bc
    const/16 v39, 0x0

    goto/16 :goto_6e

    :cond_bd
    const/16 v39, 0x0

    goto/16 :goto_6f

    :cond_be
    const/16 v39, 0x0

    goto/16 :goto_70

    :cond_bf
    const/16 v39, 0x0

    goto/16 :goto_71

    :cond_c0
    const/16 v39, 0x0

    goto/16 :goto_72

    :cond_c1
    const/16 v39, 0x0

    goto/16 :goto_73

    :cond_c2
    const/16 v39, 0x0

    goto/16 :goto_74

    :cond_c3
    const/16 v39, 0x0

    goto/16 :goto_75

    :cond_c4
    const/16 v39, 0x0

    goto/16 :goto_76

    :cond_c5
    const/16 v39, 0x0

    goto/16 :goto_77

    :cond_c6
    const/16 v39, 0x0

    goto/16 :goto_78

    :cond_c7
    const/16 v39, 0x0

    goto/16 :goto_79

    :cond_c8
    const/16 v39, 0x0

    goto/16 :goto_7a

    :catch_1
    move-exception v39

    goto/16 :goto_1
.end method

.method public static makeFeatureForHKTW()V
    .locals 9

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v3, "TGY"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "BRI"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "CWT"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "TWN"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "FET"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ZZH"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v3, v5

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    return-void

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    const-string v3, "TGY"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "ZZH"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_3
    move v3, v5

    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "BRI"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "CWT"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "TWN"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "FET"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_4
    move v3, v5

    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "feature_hktw"

    invoke-virtual {v3, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "fdn_nameinput_maxlength_limit"

    invoke-virtual {v3, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_lunar_birthday"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "common_volte"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "common_volte_hktw"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "volte_call_waiting_terminal"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "enable_volte_hold_tone"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "gui_chn_fragment"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isZeroProject()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "ui_for_hktw"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isZeroProject()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "incoming_call_widget_for_volte"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "volte_settings_in_mobile_networks_common"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "volte_settings_in_mobile_networks_hk"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "common_volte_hk"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "hk_local_ringback_tone"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "volte_settings_in_mobile_networks_common"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "volte_settings_in_mobile_networks_tw"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "common_volte_tw"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "support_both_csps_vt"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isZeroProject()Z

    move-result v3

    if-nez v3, :cond_d

    move v3, v5

    :goto_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "outgoing_image_from_gallery"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "rearrange_preset_image_setting"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "support_psvt_only"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isZeroProject()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isNobleProject()Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_8
    move v3, v5

    :goto_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "sim2_2g_only"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "NETWORK_MODE_NOT_SUPPORT_3G_ONLY_AND_2G_ONLY"

    const-string v3, "trlteduoszh"

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "a5ltezh"

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v8, "zenlte"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isNobleProject()Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "support_all_rat"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_9
    move v3, v5

    :goto_6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "chn_cdma_network_on_all_rat"

    const-string v7, "support_all_rat"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "change_network_mode_with_ctc_card_for_six_mode"

    const-string v7, "support_all_rat"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "chn_cdma_setting_on_all_rat"

    const-string v7, "support_all_rat"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "china_cdma_call"

    const-string v7, "support_all_rat"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "ctc_call_time_duration"

    const-string v7, "support_all_rat"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "ctc_call_time_duration_for_six_mode"

    const-string v7, "support_all_rat"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "video_call_disable"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasVTSupport(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_a

    move v4, v5

    :cond_a
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "not_support_ims_conference_split"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "emergency_call_state_update_after_dial"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "no_alert_tone_signal"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "feature_multisim_display_sim_icon"

    const-string v5, "feature_multisim"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_b
    move v3, v4

    goto/16 :goto_2

    :cond_c
    move v3, v4

    goto/16 :goto_3

    :cond_d
    move v3, v4

    goto/16 :goto_4

    :cond_e
    move v3, v4

    goto/16 :goto_5

    :cond_f
    move v3, v4

    goto/16 :goto_6
.end method

.method public static makeFeatureForIndia()V
    .locals 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v3, "INU"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "INS"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "SWC"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v3, v5

    :goto_0
    if-nez v3, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    const-string v3, "common_volte"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "common_volte_in"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_4
    move v3, v5

    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "volte_call_waiting_terminal"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "default_speaker_mode"

    const-string v7, "common_volte_in"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "add_vt_hold_in_menu"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_5
    move v3, v5

    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "rearrange_preset_image_setting"

    const-string v7, "common_volte_in"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "incoming_call_widget_for_volte"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_6
    move v4, v5

    :cond_7
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_8
    move v3, v4

    goto :goto_2

    :cond_9
    move v3, v4

    goto :goto_3
.end method

.method public static makeFeatureForJapan()V
    .locals 10

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v3, "DCM"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "KDI"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "SBM"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v3, v5

    :goto_0
    if-nez v3, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "feature_dcm"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "feature_kdi"

    invoke-virtual {v3, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "feature_sbm"

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "feature_jpn"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "play_busy_tone_sup_busy"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "nck_block_feature"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "dcm_disable_block_reject_call"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_19

    :cond_4
    move v3, v5

    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "dcm_packagename_for_fullscreen_incoming_call"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "dcm_enable_autoreject_mode_option"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1a

    :cond_5
    move v3, v5

    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "voice_call_disable_record_button"

    const-string v3, "voice_call_recording"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1b

    :cond_6
    move v3, v5

    :goto_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "voice_call_recording_menu"

    const-string v3, "voice_call_recording"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1c

    :cond_7
    move v3, v5

    :goto_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "bt_menu_in_easy_mode"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1d

    :cond_8
    move v3, v5

    :goto_6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "hide_caller_id"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "emergency_contacts"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "emergency_dialer_expandable_dial"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "prohibit_second_call_in_emergency_call"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "check_clir_prefix"

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "remove_voicemail_category"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1e

    :cond_9
    move v3, v5

    :goto_7
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "dcm_callwait_tone_long_feature"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "change_request_audio_focus_function"

    invoke-virtual {v3, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "emergency_3lm"

    invoke-virtual {v3, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "show_forwarding_number"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "dcm_end_call_time_blink_extension"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "dcm_parse_network_service_ussd"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "network_mode_list_dcm_lte_3g"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "jpn_change_network_mode_ui"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    or-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "dcm_show_network_info_in_manual_search_list"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "kdi_show_network_info_in_manual_search_list"

    invoke-virtual {v3, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "toddler_mode_jpn"

    const-string v7, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_TODDLER_MODE"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "airplain_mode_jpn"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "network_mode_list_kdi"

    invoke-virtual {v3, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "no_alert_tone_signal"

    invoke-virtual {v3, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "remove_network_mode"

    invoke-virtual {v3, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "change_hangup_ipc_in_auto_reject"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "dcm_emergency_conflict"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "dcm_change_data_enable_function"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "preferred_change_by_mobile_data_exceptional_case"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "tbltekdi"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "chagallltekdi"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "network_mode_list_kdi_roaming"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "network_mode_list_jpn_sbm"

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "automatic_answering_machine"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "support_safetycare_not_change_network_mode"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1f

    :cond_b
    move v3, v5

    :goto_8
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "dcm_dsac_feature"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_sync_call"

    invoke-virtual {v3, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "dcm_not_support_extra_callog_type"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "dcm_dialer_incoming_log_missed"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "dcm_dialer_prefix_setting_support"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "dcm_sda_support_feature"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "skip_provisioning_check_on_encrypting"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "dcm_incoming_call_notification_message"

    const-string v7, "DCM"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "disable_sip_call_setting"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_20

    :cond_c
    move v3, v5

    :goto_9
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "remove_additional_call_setting"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "remove_call_barring"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_21

    :cond_d
    move v3, v5

    :goto_a
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "remove_call_forwarding"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "remove_fdn"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_22

    :cond_e
    move v3, v5

    :goto_b
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "dcm_reject_call_msg_limit"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_23

    :cond_f
    move v3, v5

    :goto_c
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "dcm_auto_reject_conditions"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "voicemail_roaming_nuber"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "voicemail_notification_setting"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "video_call_not_support"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_24

    :cond_10
    move v3, v5

    :goto_d
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "video_call_disable"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_11

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_25

    :cond_11
    move v3, v5

    :goto_e
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_fwim"

    invoke-virtual {v3, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "international_dial_assist_dcm"

    const-string v7, "DCM"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Common_AddPrefix4InternationalCall"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "international_dial_assist_kdi"

    const-string v7, "KDI"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Common_AddPrefix4InternationalCall"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "config_op_ui_call_setting_dcm"

    const-string v7, "DCM"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "config_op_ui_call_setting_kdi"

    const-string v7, "KDI"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "config_op_ui_call_setting_sbm"

    const-string v7, "SBM"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_12

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_conference_call"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_call_transfer"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_merge_call"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "disable_auto_area_code"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "disable_mobile_data_settings"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_13

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_call_transfer"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_14

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "wide_band_for_hd_icon"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "update_hd_icon_by_intent"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "display_hd_icon"

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "common_volte"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "remove_volte_outgoing_calltype_menu"

    invoke-virtual {v3, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "volte_call_waiting_terminal"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "ims_voice_conference"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_15

    :cond_15
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "out_participant_conference"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_16

    :cond_16
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "ims_voice_conference_kddi"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_17

    :cond_17
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "remain_disconnected_list_conference"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_18

    :cond_18
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "common_vt"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "gui_jpn_fragment"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "concept_jpn_dcm"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "change_call_state_label"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "ui_for_jpn"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "rearrange_preset_image_setting"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "dcm_not_support_vt_emr_call"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_rotation"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "outgoing_image_from_gallery"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "handle_sip_error_code"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "handle_sip_error_code_dcm"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "ims_ps_barring"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "show_audio_codec_amr_wb"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "prohibit_chattering"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "camera_fail_image"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "prohibit_candid_shot"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "volte_cvo_feature"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_26

    const-string v3, "kltedcm"

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    const-string v3, "kltedcmactive"

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    move v3, v5

    :goto_f
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "volte_jpn_orientation_feature"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_27

    const-string v3, "kltedcm"

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    const-string v3, "kltedcmactive"

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    move v3, v5

    :goto_10
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "qvga_portrait_resolution_support"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "volte_jpn_ui"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "incoming_call_widget_for_volte"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "dcm_volte_popup_message"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "dcm_retain_path"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "video_call_downgrade_qvga"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "dcm_play_ring_back_tone_sound"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_switch_button"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "show_switch_icon_in_button"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_28

    move v3, v5

    :goto_11
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "show_switch_icon_on_call_card"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_29

    move v3, v5

    :goto_12
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "dcm_volte_keypad_enable_ui"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "wide_band_for_hd_icon"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "suppor_mute_button_in_easy_mode"

    const-string v7, "support_easy_mode"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2a

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2a

    :goto_13
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_19
    move v3, v4

    goto/16 :goto_2

    :cond_1a
    move v3, v4

    goto/16 :goto_3

    :cond_1b
    move v3, v4

    goto/16 :goto_4

    :cond_1c
    move v3, v4

    goto/16 :goto_5

    :cond_1d
    move v3, v4

    goto/16 :goto_6

    :cond_1e
    move v3, v4

    goto/16 :goto_7

    :cond_1f
    move v3, v4

    goto/16 :goto_8

    :cond_20
    move v3, v4

    goto/16 :goto_9

    :cond_21
    move v3, v4

    goto/16 :goto_a

    :cond_22
    move v3, v4

    goto/16 :goto_b

    :cond_23
    move v3, v4

    goto/16 :goto_c

    :cond_24
    move v3, v4

    goto/16 :goto_d

    :cond_25
    move v3, v4

    goto/16 :goto_e

    :cond_26
    move v3, v4

    goto/16 :goto_f

    :cond_27
    move v3, v4

    goto/16 :goto_10

    :cond_28
    move v3, v4

    goto :goto_11

    :cond_29
    move v3, v4

    goto :goto_12

    :cond_2a
    move v5, v4

    goto :goto_13
.end method

.method public static makeFeatureForKor()V
    .locals 12

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v5, "SKT"

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "SKC"

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "SKO"

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_0
    move v5, v7

    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "KTT"

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "KTC"

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "KTO"

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_1
    move v5, v7

    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v5, "LGT"

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "LUC"

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "LUO"

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_2
    move v5, v7

    :goto_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v5, "ANY"

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "KOO"

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_3
    move v5, v7

    :goto_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_4
    move v5, v7

    :goto_4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_a

    :goto_5
    return-void

    :cond_5
    move v5, v6

    goto/16 :goto_0

    :cond_6
    move v5, v6

    goto :goto_1

    :cond_7
    move v5, v6

    goto :goto_2

    :cond_8
    move v5, v6

    goto :goto_3

    :cond_9
    move v5, v6

    goto :goto_4

    :cond_a
    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_kor"

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_skt"

    invoke-virtual {v5, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_ktt"

    invoke-virtual {v5, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_lgt"

    invoke-virtual {v5, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_kor_open"

    invoke-virtual {v5, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "default_noise_reduction"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_function_sound_tuning"

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "use_second_waiting_call_tone"

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "use_second_call_end_tone"

    invoke-virtual {v5, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "disable_waiting_tone"

    invoke-virtual {v5, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "allow_local_dtmf_tones"

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "separate_ringback_gain"

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "mute_music_stream_during_call"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTablet()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "emergency_dialer_sound_pool_tones_haptic"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_tphone"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->hasTPhonePackage()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_tgroupon"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    const-string v10, "com.skt.tgroupon"

    invoke-static {v9, v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_ollehphone"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->hasOllehPhonePackage()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "support_mobilecarrier"

    const-string v5, "support_tphone"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "support_ollehphone"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    :cond_b
    move v5, v7

    :goto_6
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_uwa"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Common_SupportUwaApp"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "auto_unhold"

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1d

    :cond_c
    move v5, v7

    :goto_7
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "lost_phone_lock"

    invoke-virtual {v5, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "clear_cover_check_fragment"

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "roaming_auto_dial"

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_d

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_d

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1e

    :cond_d
    move v5, v7

    :goto_8
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "disable_roaming_multi_imsi"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "change_rad_number"

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_e

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_e

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1f

    const-string v5, "disable_roaming_multi_imsi"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1f

    :cond_e
    move v5, v7

    :goto_9
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "w_zone_for_rad"

    const-string v5, "roaming_auto_dial"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_20

    const-string v5, "feature_lgt"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_20

    move v5, v7

    :goto_a
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "remove_voicemail_category"

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "try_to_regi_ims"

    const-string v5, "common_volte"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_21

    move v5, v7

    :goto_b
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "gui_kor_fragment"

    const-string v9, "common_vt"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "change_call_state_label"

    const-string v9, "common_vt"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "vt_dual_camera"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "vt_sec_phone_upgraded_ui"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v5

    if-nez v5, :cond_f

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v5

    if-eqz v5, :cond_22

    :cond_f
    move v5, v7

    :goto_c
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "vt_call_fail_fallback"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "vt_left_keypad_enable_ui"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "video_call_not_support"

    const-string v5, "common_vt"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_23

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasVTSupport(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_23

    move v5, v7

    :goto_d
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "block_speaker_menu"

    const-string v5, "common_vt"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24

    const-string v5, "no_receiver_in_call"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24

    move v5, v7

    :goto_e
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "camera_effect"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isNobleProject()Z

    move-result v5

    if-nez v5, :cond_10

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTProject()Z

    move-result v5

    if-nez v5, :cond_10

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isZeroProject()Z

    move-result v5

    if-nez v5, :cond_10

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "chagallhlte"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_10

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "gt5"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_10

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "gts28"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_10

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "gts210"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_25

    :cond_10
    move v5, v7

    :goto_f
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "default_speaker_mode"

    const-string v9, "common_vt"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "initial_speaker_settings"

    const-string v9, "common_vt"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "mediashare"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "outgoing_image_from_gallery"

    const-string v5, "common_vt"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasVTSupport(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_26

    :cond_11
    move v5, v7

    :goto_10
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "overlay_popup_play"

    const-string v9, "common_vt"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "rearrange_preset_image_setting"

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "resize_screen"

    const-string v5, "common_vt"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTablet()Z

    move-result v5

    if-nez v5, :cond_27

    move v5, v7

    :goto_11
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "ui_for_kor"

    const-string v9, "common_vt"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_emergency_number"

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_tablet_receiver"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "millet"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "disable_add_call"

    const-string v5, "common_volte"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_28

    move v5, v7

    :goto_12
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "single_lte"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "common_volte_kor"

    const-string v5, "common_volte"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_29

    move v5, v7

    :goto_13
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "volte_call_waiting_terminal"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "auto_call_test"

    const-string v5, "eng"

    sget-object v10, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    const-string v5, "common_volte"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_12

    const-string v5, "common_vt"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a

    :cond_12
    move v5, v7

    :goto_14
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "ims_call_message"

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "video_conference"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "handle_not_registered"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_2b

    move v5, v7

    :goto_15
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "handle_sip_error_code"

    const-string v5, "common_volte"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_13

    const-string v5, "common_vt"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c

    :cond_13
    move v5, v7

    :goto_16
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "ims_ps_barring"

    const-string v5, "common_volte"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2d

    move v5, v7

    :goto_17
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "ims_voice_conference"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "ims_support_photo_ring"

    invoke-virtual {v5, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "ims_photoring_use_nxp"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "noblelte"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2e

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "zenlte"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2e

    move v5, v7

    :goto_18
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "ims_support_multimedia_caller_id"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_VoiceCall_SupportMCID"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_uicc_mobility"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_14

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_15

    :cond_14
    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_conference_call"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_16

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_17

    :cond_16
    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_call_transfer"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_merge_call"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "optis_command_test"

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "auto_call"

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "support_action_domestic_network"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_18

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2f

    :cond_18
    move v5, v7

    :goto_19
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "remove_network_mode"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "novel3g"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "support_kt_hidden_data_network"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "noblelte"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_30

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "zenlte"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_30

    move v5, v7

    :goto_1a
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "block_data_during_call"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "disable_sip_call_setting"

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "display_reject_message_limit_for_kor"

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "hd_voice_network_prefer"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Common_EnableHDVoiceDuring3GConnection"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "hd_voice_network_prefer_default_on"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "interworking_hd_voice_by_intent"

    const-string v5, "hd_voice_network_prefer"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_19

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isKProject()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_31

    :cond_19
    move v5, v7

    :goto_1b
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "international_call_service"

    const-string v9, "KOR"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Common_AddPrefix4InternationalCall"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "modify_reject_message_for_kor"

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "remove_additional_call_setting"

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "remove_call_barring"

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "remove_call_forwarding"

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "remove_fdn"

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "restrict_international_call"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_32

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "kactiveltekx"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_32

    move v5, v7

    :goto_1c
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "extended_restrict_international_call"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_33

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "kactiveltekx"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_33

    move v5, v7

    :goto_1d
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "support_oneline_greeting"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_34

    const-string v5, "ims_support_multimedia_caller_id"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_34

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "jalte"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_34

    move v5, v7

    :goto_1e
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "clear_dialpad_digits"

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "handle_alerting_state"

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "handle_mt_hold_call_state"

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "bt_menu_in_easy_mode"

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "emergency_find_lost_phone"

    invoke-virtual {v5, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_emergency_report_helper_app"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Common_EnableOneTouchReport"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "default_incomingcall_popup"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_35

    const-string v5, "default_incomingcall_popup"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_35

    move v5, v7

    :goto_1f
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "wide_band_for_hd_icon"

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1a

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_36

    :cond_1a
    move v5, v7

    :goto_20
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_logs_kor"

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "show_add_call_menu_for_3rd_call"

    invoke-virtual {v5, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_nsri_secure"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "clear_cover_ui_support_for_kmodel_base"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "lentislte"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "remove_fade_effect_on_international_call_tts"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isZeroProject()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "change_order_of_endcall_buttons"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "display_alerting_title"

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "display_hd_icon"

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1b

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1b

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_37

    :cond_1b
    move v5, v7

    :goto_21
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "popup_caller_info_wide_height"

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_switch_button"

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "show_switch_icon_in_button"

    const-string v5, "no_receiver_in_call"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_38

    move v5, v7

    :goto_22
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "show_switch_icon_on_call_card"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "suppor_mute_button_in_easy_mode"

    const-string v9, "support_easy_mode"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_39

    const-string v9, "common_vt"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_39

    :goto_23
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_lunar_birthday"

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "save_cnap_info_in_call_log"

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "cnap_supplementary_service"

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "cdnip_supplementary_service"

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "geo_description_disable"

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "not_support_caller_info_card"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isNovel()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "enable_volte_hold_tone"

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "ota_mode_disable_expand"

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_display_bitrate"

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "smart_auto_answering"

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_1c
    move v5, v6

    goto/16 :goto_6

    :cond_1d
    move v5, v6

    goto/16 :goto_7

    :cond_1e
    move v5, v6

    goto/16 :goto_8

    :cond_1f
    move v5, v6

    goto/16 :goto_9

    :cond_20
    move v5, v6

    goto/16 :goto_a

    :cond_21
    move v5, v6

    goto/16 :goto_b

    :cond_22
    move v5, v6

    goto/16 :goto_c

    :cond_23
    move v5, v6

    goto/16 :goto_d

    :cond_24
    move v5, v6

    goto/16 :goto_e

    :cond_25
    move v5, v6

    goto/16 :goto_f

    :cond_26
    move v5, v6

    goto/16 :goto_10

    :cond_27
    move v5, v6

    goto/16 :goto_11

    :cond_28
    move v5, v6

    goto/16 :goto_12

    :cond_29
    move v5, v6

    goto/16 :goto_13

    :cond_2a
    move v5, v6

    goto/16 :goto_14

    :cond_2b
    move v5, v6

    goto/16 :goto_15

    :cond_2c
    move v5, v6

    goto/16 :goto_16

    :cond_2d
    move v5, v6

    goto/16 :goto_17

    :cond_2e
    move v5, v6

    goto/16 :goto_18

    :cond_2f
    move v5, v6

    goto/16 :goto_19

    :cond_30
    move v5, v6

    goto/16 :goto_1a

    :cond_31
    move v5, v6

    goto/16 :goto_1b

    :cond_32
    move v5, v6

    goto/16 :goto_1c

    :cond_33
    move v5, v6

    goto/16 :goto_1d

    :cond_34
    move v5, v6

    goto/16 :goto_1e

    :cond_35
    move v5, v6

    goto/16 :goto_1f

    :cond_36
    move v5, v6

    goto/16 :goto_20

    :cond_37
    move v5, v6

    goto/16 :goto_21

    :cond_38
    move v5, v6

    goto/16 :goto_22

    :cond_39
    move v7, v6

    goto/16 :goto_23
.end method

.method public static makeFeatureForLatin()V
    .locals 11

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v4, "BR"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "MX"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "AR"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "UY"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "CO"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "CL"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "PE"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "VE"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "PY"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "GT"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "SV"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "HN"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "NI"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "PA"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "EC"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "PR"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "DO"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "JM"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "CR"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "TT"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "BO"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "DM"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v4, v6

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v4, "ZTA"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v4, "ZVV"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    :goto_1
    return-void

    :cond_1
    move v4, v5

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "notipopup_when_number_changed"

    const-string v8, "BR"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "ltn_auto_csp"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v9, "CscFeature_VoiceCall_EnablePrefix4LongDistanceCallAs"

    invoke-virtual {v4, v9}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_b

    move v4, v6

    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "enable_detail_call_end_reason"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_VoiceCall_EnableDetailCallEndCause"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "enable_ltn_callerid_matching"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Contact_EnableDynCallerIdMatchingDigitWithAutoSim"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "ltn_sdnname_display"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_VoiceCall_EnableDisplaySdnNameDuringCall"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "fdn_contact_search"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Contact_SearchIncludingFdn"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "disable_toast_popup_when_mo_ccf"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_VoiceCall_DisableToastPopupWhenMOConditionalCallForwarding"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "disable_popupmsg_when_deactivationcf"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_VoiceCall_DisablePopupMsgWhenDeactivatingCallForwarding"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "TFG"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "BTU"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_3
    const-string v4, "ril.product_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v4, "COB"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    const-string v4, "BTU"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "disable_popupmsg_when_deactivationcf"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "geo_description_disable"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_VoiceCall_DisableGeoDescription"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "volte_call_waiting_terminal"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "disable_enter_nck"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Phone_DisableEnterNCK"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "disable_nwlock_dismiss"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Phone_DisableQuitNetworkLockByManual"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "add_label_for_simlock"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v9, "CscFeature_Phone_AddLabelForSimLock"

    invoke-virtual {v4, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    move v4, v6

    :goto_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "remove_mmi_complete_popup"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_VoiceCall_DisableUssdCompleteNoti"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "change_ussd_popup_lte"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_VoiceCall_UseUssdToastForNetworkNoResp"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "disable_edit_callerid"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_VoiceCall_DisableEditingCallerID"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "disable_sip_call_setting"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Setting_DisableMenuInternetCallSetting"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "config_exception_data_roaming_noti"

    const-string v8, "All"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Setting_ConfigExceptionDataRoamingNoti"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "wating_calloption_end"

    const-string v8, "end"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_VoiceCall_OptionConfigForCallWaiting"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "wating_calloption_hold"

    const-string v8, "hold"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_VoiceCall_OptionConfigForCallWaiting"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "wating_calloption_invisible"

    const-string v8, "wating_calloption_end"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "wating_calloption_hold"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    :cond_7
    move v5, v6

    :cond_8
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "hac_enable"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "feature_multisim"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v4

    if-le v4, v6, :cond_9

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "feature_multisim_carrier_match"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Common_EnableCarrierMatchingForMultiSimDev"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    const-string v4, "klteum"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "video_call_disable"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "feature_zta"

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "feature_zvv"

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_b
    move v4, v5

    goto/16 :goto_2

    :cond_c
    move v4, v5

    goto/16 :goto_3
.end method

.method private static makeFeatureForPhoneSearch()V
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "remove_mobile_networks_cdma_lte_data_service"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "remove_mobile_networks_roaming"

    const-string v1, "volte_settings_in_mobile_networks"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "non_volte_settings_in_mobile_networks"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "national_roaming_mode_menu"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "roaming_enhancement"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "global_data_roaming_access_enable"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "sprint_mvno_mobile_networks"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "feature_ctc"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_0
    move v1, v3

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "remove_mobile_networks_preferred_network_mode"

    const-string v5, "feature_ctc"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "remove_mobile_networks_enabled_networks"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "remove_mobile_networks_enhanced_4g_lte"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "remove_mobile_networks_data_enabled"

    const-string v1, "volte_settings_in_mobile_networks"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "non_volte_settings_in_mobile_networks"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "feature_ctc"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_1
    move v1, v3

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "remove_mobile_networks_enhanced_4glte"

    const-string v1, "volte_settings_in_mobile_networks"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "non_volte_settings_in_mobile_networks"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    move v1, v3

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "remove_mobile_networks_international_enhanced_4glte"

    const-string v1, "volte_settings_in_mobile_networks"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "non_volte_settings_in_mobile_networks"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    move v1, v3

    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "remove_mobile_networks_preferred_roaming"

    const-string v5, "roaming_enhancement"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "remove_mobile_networks_global_data_roaming_access"

    const-string v1, "global_data_roaming_access_enable"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    move v1, v3

    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "remove_mobile_networks_roaming_state"

    const-string v1, "global_data_roaming_access_enable"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    move v1, v3

    :goto_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "remove_mobile_networks_signal_strength"

    const-string v1, "global_data_roaming_access_enable"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    move v1, v3

    :goto_6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "remove_mobile_networks_preferred_networks"

    const-string v1, "preferred_networks"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    move v1, v3

    :goto_7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "remove_mobile_networks_enhanced_roaming_mode"

    const-string v1, "csc_chameleon_enable"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    move v1, v3

    :goto_8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "remove_mobile_networks_connections_optimizer"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isSCOExists()Z

    move-result v1

    if-nez v1, :cond_15

    move v1, v3

    :goto_9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "remove_mobile_networks_volte_call"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "remove_mobile_networks_roaming_settings"

    const-string v1, "config_op_ui_call_setting_kdi"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    move v1, v3

    :goto_a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "remove_cdma_options_cdma_system_select"

    const-string v1, "system_selection_automatic_ab_enable"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "system_selection_automatic_donot_hide"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string v1, "sprint_mvno_mobile_networks"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "roaming_enhancement"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "feature_ctc"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "feature_chn"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "feature_hktw"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    :cond_3
    move v1, v3

    :goto_b
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "remove_cdma_options_cdma_subscription"

    const-string v1, "feature_ctc"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "feature_chn"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_4
    move v1, v3

    :goto_c
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "remove_cdma_options_apn_cdma"

    const-string v1, "cdma_apn_enable"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "chn_cdma_network_on_all_rat"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    move v1, v3

    :goto_d
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x1120053

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "remove_cdma_options_cdma_activate_device"

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "remove_cdma_options_carrier_settings"

    const-string v1, "carrier_settings_enable"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    move v1, v3

    :goto_e
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "remove_cdma_options_carrier_sel"

    const-string v1, "feature_ctc"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "lte"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    :cond_5
    move v1, v3

    :goto_f
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "remove_cdma_options_dun"

    const-string v1, "support_cdma_dun"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    move v1, v3

    :goto_10
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "remove_gsm_umts_options_apn"

    const-string v5, "global_network_cdma_gsm_enable"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "remove_gsm_umts_options_carrier_sel"

    const-string v5, "config_op_ui_call_setting_kdi"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "remove_gsm_umts_options_carrier_settings"

    const-string v1, "carrier_settings_enable"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    move v1, v3

    :goto_11
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "remove_gsm_umts_options_prefer_networkmode"

    const-string v1, "remove_network_mode"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "global_network_cdma_gsm_enable"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "allow_select_network_mode"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "feature_ctc"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    :cond_6
    move v1, v3

    :goto_12
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "remove_gsm_umts_options_prefer_networkmode1"

    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "feature_ctc"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    :cond_7
    move v1, v3

    :goto_13
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "remove_gsm_umts_options_prefer_networkmode2"

    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "feature_ctc"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    :cond_8
    move v1, v3

    :goto_14
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "remove_gsm_umts_options_global_gsm_umts_system_select"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "remove_mobile_networks_kor_data_enabled"

    const-string v1, "feature_ktt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    const-string v1, "menu_simplification"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    move v1, v3

    :goto_15
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "remove_mobile_networks_kor_roaming"

    const-string v5, "feature_lgt"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "remove_mobile_networks_kor_lte_roaming"

    const-string v5, "feature_kor"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "remove_mobile_networks_kor_apn"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "remove_mobile_networks_kor_carrier_sel"

    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "feature_ktt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "feature_skt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    :cond_9
    move v1, v3

    :goto_16
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "remove_mobile_networks_kor_data_network_mode"

    const-string v1, "feature_ktt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v1, "menu_simplification"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    move v1, v3

    :goto_17
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "remove_mobile_networks_kor_network_status"

    const-string v5, "feature_lgt"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "feature_kor_open"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    :cond_a
    move v2, v3

    :cond_b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_c
    move v1, v2

    goto/16 :goto_0

    :cond_d
    move v1, v2

    goto/16 :goto_1

    :cond_e
    move v1, v2

    goto/16 :goto_2

    :cond_f
    move v1, v2

    goto/16 :goto_3

    :cond_10
    move v1, v2

    goto/16 :goto_4

    :cond_11
    move v1, v2

    goto/16 :goto_5

    :cond_12
    move v1, v2

    goto/16 :goto_6

    :cond_13
    move v1, v2

    goto/16 :goto_7

    :cond_14
    move v1, v2

    goto/16 :goto_8

    :cond_15
    move v1, v2

    goto/16 :goto_9

    :cond_16
    move v1, v2

    goto/16 :goto_a

    :cond_17
    move v1, v2

    goto/16 :goto_b

    :cond_18
    move v1, v2

    goto/16 :goto_c

    :cond_19
    move v1, v2

    goto/16 :goto_d

    :cond_1a
    move v1, v2

    goto/16 :goto_e

    :cond_1b
    move v1, v2

    goto/16 :goto_f

    :cond_1c
    move v1, v2

    goto/16 :goto_10

    :cond_1d
    move v1, v2

    goto/16 :goto_11

    :cond_1e
    move v1, v2

    goto/16 :goto_12

    :cond_1f
    move v1, v2

    goto/16 :goto_13

    :cond_20
    move v1, v2

    goto/16 :goto_14

    :cond_21
    move v1, v2

    goto/16 :goto_15

    :cond_22
    move v1, v2

    goto/16 :goto_16

    :cond_23
    move v1, v2

    goto :goto_17
.end method

.method public static makeFeatureForTablet()V
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "mysound_music_only"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "tablet_device"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "no_earpiece_in_tablet"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "gt510lte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "chagalllte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "gt5note10lte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "gts210lte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    move v0, v2

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "no_receiver_in_call"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "tablet_l_osup_vt"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "chagall"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "klimt"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "matisse"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "vienna"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "v1a3g"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "millet"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "degas"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "v2"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "lt03"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    move v0, v2

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "tablet_l_osup_vt_spkon"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "klimt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "matisse_no_dual_camera"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "matisse"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "millet"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "degas"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_3
    move v0, v2

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_multi_user"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "chagall"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_hide_conference_manager_menu"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "support_split_settings"

    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "menu_simplification"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v2

    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_easy_mode"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "touch_lock"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "millet"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_help_easy_mode"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "lock_screen_during_call"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->hasProximitySensor()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v2

    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_contacts_osup"

    const-string v4, "tablet_l_osup"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "disable_sip_call_setting"

    const-string v0, "menu_simplification"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "chagallltevl"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "klimtltevl"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "matissewifiue"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "v1awifiue"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "milletwifiue"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_4
    move v0, v2

    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "hide_popup_progress_view"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "gt5"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "not_support_hdvoice_during_record"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "millet"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "show_extra_volume_text_menu"

    const-string v4, "no_receiver_in_call"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "show_extra_volume_in_call_card"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    :goto_7
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "no_proximity_sensor"

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "millet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto/16 :goto_1

    :cond_6
    move v0, v1

    goto/16 :goto_2

    :cond_7
    move v0, v1

    goto/16 :goto_3

    :cond_8
    move v0, v1

    goto/16 :goto_4

    :cond_9
    move v0, v1

    goto/16 :goto_5

    :cond_a
    move v0, v1

    goto :goto_6

    :cond_b
    move v2, v1

    goto :goto_7
.end method

.method public static makeFeatureForUsa()V
    .locals 33

    const-string v29, "XAS"

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_0

    const-string v29, "SPR"

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_e

    :cond_0
    const/16 v29, 0x1

    :goto_0
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    const-string v29, "VZW"

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    const-string v29, "VMU"

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    const-string v29, "BST"

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_1

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_f

    :cond_1
    const/16 v29, 0x1

    :goto_1
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_2

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_10

    :cond_2
    const/16 v29, 0x1

    :goto_2
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    const-string v29, "d2spr"

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_3

    const-string v29, "d2vmu"

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_3

    const-string v29, "t0ltespr"

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_3

    const-string v29, "jfltespr"

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_3

    const-string v29, "jflterefreshspr"

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_3

    const-string v29, "hltespr"

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_3

    const-string v29, "kltespr"

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_3

    const-string v29, "kltesprsports"

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_3

    const-string v29, "trltespr"

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_3

    const-string v29, "tbltespr"

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_3

    const-string v29, "zeroltespr"

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_3

    const-string v29, "zerofltespr"

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_3

    const-string v29, "zenltespr"

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_3

    const-string v29, "nobleltespr"

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_11

    :cond_3
    const/16 v29, 0x1

    :goto_3
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    const-string v29, "USC"

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    const-string v29, "MTR"

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const-string v29, "XAR"

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_4

    const-string v29, "ACG"

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_12

    :cond_4
    const/16 v29, 0x1

    :goto_4
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v29, "CRI"

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v29, "TFN"

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    const-string v29, "CSP"

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string v29, "LRA"

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_5

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_5

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_5

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_5

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_5

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_5

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_13

    :cond_5
    const/16 v29, 0x1

    :goto_5
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_6

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_6

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_14

    :cond_6
    const/16 v29, 0x1

    :goto_6
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_7

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_7

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_15

    :cond_7
    const/16 v29, 0x1

    :goto_7
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    const-string v29, "ATT"

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_8

    const-string v29, "AIO"

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_16

    :cond_8
    const/16 v29, 0x1

    :goto_8
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v29, "TMB"

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_9

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_9

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_17

    :cond_9
    const/16 v29, 0x1

    :goto_9
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_a

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_18

    :cond_a
    const/16 v29, 0x1

    :goto_a
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_b

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_19

    :cond_b
    const/16 v29, 0x1

    :goto_b
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    const-string v29, "msm"

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->baseband:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_c

    const-string v29, "mdm"

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->baseband:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1a

    :cond_c
    const/16 v29, 0x1

    :goto_c
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v30, "trlte"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_d

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v30, "tblte"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_d

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v30, "klte"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_d

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v30, "t0lte"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_d

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v30, "jflte"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_d

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v30, "hlte"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_d

    const-string v29, "jactivelteuc"

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_d

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v30, "d2"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_1b

    :cond_d
    const/16 v29, 0x1

    :goto_d
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x1120053

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_1c

    :goto_e
    return-void

    :cond_e
    const/16 v29, 0x0

    goto/16 :goto_0

    :cond_f
    const/16 v29, 0x0

    goto/16 :goto_1

    :cond_10
    const/16 v29, 0x0

    goto/16 :goto_2

    :cond_11
    const/16 v29, 0x0

    goto/16 :goto_3

    :cond_12
    const/16 v29, 0x0

    goto/16 :goto_4

    :cond_13
    const/16 v29, 0x0

    goto/16 :goto_5

    :cond_14
    const/16 v29, 0x0

    goto/16 :goto_6

    :cond_15
    const/16 v29, 0x0

    goto/16 :goto_7

    :cond_16
    const/16 v29, 0x0

    goto/16 :goto_8

    :cond_17
    const/16 v29, 0x0

    goto/16 :goto_9

    :cond_18
    const/16 v29, 0x0

    goto/16 :goto_a

    :cond_19
    const/16 v29, 0x0

    goto/16 :goto_b

    :cond_1a
    const/16 v29, 0x0

    goto/16 :goto_c

    :cond_1b
    const/16 v29, 0x0

    goto :goto_d

    :cond_1c
    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "play_busy_tone_sup_busy"

    const/16 v31, 0x1

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "feature_usa"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "disable_sip_call_setting"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "tty_enable"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "enable_screen_timeout_incall_DELETE"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "samsung_screen_timeout_incall"

    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "emergency_dialer_tones"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "number_format_with_country_iso"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "show_extra_volume_in_call_card"

    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "support_period_mark"

    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "support_wave_effect"

    const/16 v31, 0x1

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "video_call_disable"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_1d

    const-string v29, "common_volte"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_1e

    :cond_1d
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_59

    :cond_1e
    const/16 v29, 0x1

    :goto_f
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "video_call_not_support"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_1f

    const-string v29, "common_volte"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_5a

    :cond_1f
    const/16 v29, 0x1

    :goto_10
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "allow_local_dtmf_tones"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "menu_usa_mess"

    sget-object v31, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v32, "cprimelte"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "remove_call_alerts_setting"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_5b

    const-string v29, "menu_usa_mess"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_5b

    const/16 v29, 0x1

    :goto_11
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "show_callsettings_ringtones_keytones_preference"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "remove_minute_minder_setting"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "remove_callforward_error_popup"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "popup_call_service_has_icon"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "enable_volte_hold_tone"

    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "change_message_icon_for_vzw"

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_5c

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_5c

    const/16 v29, 0x1

    :goto_12
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "change_message_icon_for_att"

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_5d

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_5d

    const/16 v29, 0x1

    :goto_13
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "hac_enable"

    const/16 v31, 0x1

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "ecid_enable"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_20

    const-string v29, "tablet_device"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_21

    :cond_20
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_21

    const-string v29, "jflteuc"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_21

    const-string v29, "hlteuc"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_21

    const-string v29, "coreprimeltevzw"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_21

    const-string v29, "klteuc"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_21

    const-string v29, "slteuc"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_21

    const-string v29, "klteattactive"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_21

    const-string v29, "kltevzw"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_21

    const-string v29, "mega2lteuc"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_21

    const-string v29, "tblteuc"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_21

    const-string v29, "trlteuc"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_21

    const-string v29, "tbltevzw"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_21

    const-string v29, "trltevzw"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_21

    const-string v29, "noblelteuc"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_21

    const-string v29, "tbltetmo"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_21

    const-string v29, "zerolteuc"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_21

    const-string v29, "zeroflteuc"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_21

    const-string v29, "jactivelteuc"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_21

    const-string v29, "marinelteuc"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_21

    const-string v29, "trltetmo"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_21

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v32, "kminilte"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_21

    const-string v29, "zenlteuc"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_21

    const-string v29, "zerofltevzw"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_21

    const-string v29, "zeroltevzw"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_21

    const-string v29, "nobleltevzw"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_21

    const-string v29, "zenltevzw"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_5e

    :cond_21
    const/16 v29, 0x1

    :goto_14
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "default_caller_information"

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_5f

    const/16 v29, 0x1

    :goto_15
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "show_caller_info_setting"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "emergency_dialer_button_rounded_rectangle"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_60

    const-string v29, "menu_simplification"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_60

    const/16 v29, 0x1

    :goto_16
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "feature_cdma_us"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "cdma_additional_setting_enable"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "cdma_subscription_enable"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_61

    const/16 v29, 0x1

    :goto_17
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "dtmf_type_enable"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "not_ota_ui_display"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_62

    const-string v29, "tablet_device"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_22

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_62

    :cond_22
    const/16 v29, 0x1

    :goto_18
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "usa_cdma_emergency_concept"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "usa_cdma_concept"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "usa_cdma_smc_fac_req"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_23

    const-string v29, "kltevl"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_63

    :cond_23
    const/16 v29, 0x1

    :goto_19
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "save_cnap_info_in_call_log"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_24

    const-string v29, "kltevl"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_64

    :cond_24
    const/16 v29, 0x1

    :goto_1a
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "headset_highest_priority_for_call"

    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "caller_name_reduced_font_size"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "reboot_after_ota_success"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "show_ota_popup"

    const-string v29, "chagalllteusc"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_25

    const-string v29, "matisselteusc"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_65

    :cond_25
    const/16 v29, 0x1

    :goto_1b
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "tmo_echolocate_logger"

    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "global_network_cdma_gsm_enable"

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_26

    const-string v29, "t0ltespr"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_26

    const-string v29, "jfltespr"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_26

    const-string v29, "jflterefreshspr"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_26

    const-string v29, "hltespr"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_26

    const-string v29, "matisselteusc"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_26

    const-string v29, "kltespr"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_26

    const-string v29, "kltesprsports"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_26

    const-string v29, "trltespr"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_26

    const-string v29, "tbltespr"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_26

    const-string v29, "meliusltespr"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_26

    const-string v29, "p4noteltespr"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_26

    const-string v29, "zeroltespr"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_26

    const-string v29, "zerofltespr"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_26

    const-string v29, "zenltespr"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_26

    const-string v29, "noblelteusc"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_26

    const-string v29, "nobleltespr"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_26

    const-string v29, "zenlteusc"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_26

    const-string v29, "zerolteusc"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_26

    const-string v29, "zeroflteusc"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_26

    const-string v29, "klteacg"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_66

    :cond_26
    const/16 v29, 0x1

    :goto_1c
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "global_network_cdma_gsm_enable_for_spr"

    const-string v29, "global_network_cdma_gsm_enable"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_67

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_67

    const/16 v29, 0x1

    :goto_1d
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "global_network_cdma_gsm_enable_for_spr_f"

    const-string v29, "global_network_cdma_gsm_enable"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_68

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_68

    const/16 v29, 0x1

    :goto_1e
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "global_network_cdma_gsm_enable_for_spr_m"

    const-string v29, "global_network_cdma_gsm_enable"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_69

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_69

    const/16 v29, 0x1

    :goto_1f
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "global_network_cdma_gsm_enable_for_vzw"

    const-string v29, "global_network_cdma_gsm_enable"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_6a

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_6a

    const/16 v29, 0x1

    :goto_20
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "global_network_cdma_gsm_enable_for_usc"

    const-string v29, "global_network_cdma_gsm_enable"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_6b

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_6b

    const/16 v29, 0x1

    :goto_21
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "cdma_apn_enable"

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_28

    const-string v29, "chagalllteusc"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_28

    const-string v29, "matisselteusc"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_28

    const-string v29, "jfltespr"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_27

    const-string v29, "jflterefreshspr"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_27

    const-string v29, "hltespr"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_27

    const-string v29, "kltespr"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_27

    const-string v29, "kltesprsports"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_27

    const-string v29, "trltespr"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_27

    const-string v29, "tbltespr"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_27

    const-string v29, "zeroltespr"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_27

    const-string v29, "zerofltespr"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_27

    const-string v29, "zenltespr"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_27

    const-string v29, "nobleltespr"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_27

    const-string v29, "gprimeltespr"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_6c

    :cond_27
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_6c

    :cond_28
    const/16 v29, 0x1

    :goto_22
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "international_dialing_enable"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_29

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_6d

    :cond_29
    const/16 v29, 0x1

    :goto_23
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "auto_retry_enable"

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_2a

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_2a

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_2a

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_2a

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_6e

    :cond_2a
    const/16 v29, 0x1

    :goto_24
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "voice_privacy_enable"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_6f

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_6f

    const/16 v29, 0x1

    :goto_25
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "emergency_call_tone_always"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_2b

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_70

    :cond_2b
    const/16 v29, 0x1

    :goto_26
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "emergency_call_tone_volume"

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_2c

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_2c

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_2c

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_2c

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_2c

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_2c

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_2c

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_71

    :cond_2c
    const/16 v29, 0x1

    :goto_27
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "emergency_call_tone"

    const-string v29, "emergency_call_tone_always"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_2d

    const-string v29, "emergency_call_tone_volume"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_72

    :cond_2d
    const/16 v29, 0x1

    :goto_28
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "emergency_calllog_disable"

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_2e

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_2e

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_2e

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_2e

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_2e

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_2e

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_2e

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_73

    :cond_2e
    const/16 v29, 0x1

    :goto_29
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "otasp_calllog_disable"

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_2f

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_2f

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_2f

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_2f

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_2f

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_2f

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_74

    :cond_2f
    const/16 v29, 0x1

    :goto_2a
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "get_orig_dial_string_enable"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_30

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_30

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_75

    :cond_30
    const/16 v29, 0x1

    :goto_2b
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "activate_your_phone"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_31

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_31

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_76

    :cond_31
    const/16 v29, 0x1

    :goto_2c
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "add_call_not_support"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "voiceless_ota_provisioning_action"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "disable_waiting_tone_by_network"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "support_drop_text_conference_manage"

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_77

    const-string v29, "menu_simplification"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_77

    const/16 v29, 0x1

    :goto_2d
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "support_move_button_conference_manage"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "wifi_disable_during_emergency_call"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "network_mode_disable"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "usa_gsm_network_setting"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "allow_local_dtmf_tones_always"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "beep_vibration_for_ussd"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "support_call_transfer"

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_78

    const/16 v29, 0x1

    :goto_2e
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "tty_to_default_wired_headset_plugged_out"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "disable_add_call_mute_hold_during_emergency_call"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "add_vt_hold_in_menu"

    const-string v29, "common_volte"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_79

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_79

    const/16 v29, 0x1

    :goto_2f
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "feature_spr"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "emergency_calls_only_enable"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "roaming_enhancement"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "preferred_network_mode_reboot_enable"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "visual_voicemail"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "visual_voicemail_enable"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->hasVisualVoicemail()Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "remove_voicemail_category"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->hasVisualVoicemail()Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "emergency_callback_mode_exit_timer_enable"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_7a

    const/16 v29, 0x1

    :goto_30
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "system_select_home_only"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_32

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_7b

    :cond_32
    const/16 v29, 0x1

    :goto_31
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "system_select_home_only_entry"

    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "hdvoice_call_status"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "not_support_extra_view_page"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "support_more_option_item_for_extra_view_page"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "reject_call_with_message_drawer_while_in_secure_lock_pending"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "remove_call_duration"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "omadm_lte_forced_nv"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "omadm_lte_forced_not_support_network_mode_popup"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_7c

    const-string v29, "gts210ltespr"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_7c

    const/16 v29, 0x1

    :goto_32
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "csc_chameleon_enable"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v31

    const-string v32, "CscFeature_Common_UseChameleon"

    invoke-virtual/range {v31 .. v32}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "abbreviated_dialing_codes_enable"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_33

    const-string v29, "csc_chameleon_enable"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_7d

    :cond_33
    const/16 v29, 0x1

    :goto_33
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "abbreviated_dialing_codes_table_sprint"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "abbreviated_dialing_codes_table_virgin"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "abbreviated_dialing_codes_table_boost"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "network_mode_automatic_cdma_lte_gsm"

    const-string v29, "global_network_cdma_gsm_enable_for_spr"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_34

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_7e

    const-string v29, "zeroltespr"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_34

    const-string v29, "zerofltespr"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_7e

    :cond_34
    const/16 v29, 0x1

    :goto_34
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "network_mode_cdma_lte"

    const-string v29, "klteacg"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_35

    const-string v29, "matisselteusc"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_35

    const-string v29, "global_network_cdma_gsm_enable_for_spr_m"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_7f

    const-string v29, "zeroltespr"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_7f

    const-string v29, "zerofltespr"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_7f

    :cond_35
    const/16 v29, 0x1

    :goto_35
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "sprint_connections_optimizer"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isSCOExists()Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "roaming_setting_guard_data_only"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_80

    const/16 v29, 0x1

    :goto_36
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "thrway_active_disable"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "lte_roaming_enhancement"

    const-string v29, "zeroltespr"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_36

    const-string v29, "zerofltespr"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_36

    const-string v29, "zenltespr"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_36

    const-string v29, "nobleltespr"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_36

    const-string v29, "gprimeltespr"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_81

    :cond_36
    const/16 v29, 0x1

    :goto_37
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "sprint_mvno_mobile_networks"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "system_selection_automatic_ab_enable"

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_37

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_82

    :cond_37
    const/16 v29, 0x1

    :goto_38
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "global_data_roaming_access_enable"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "us_cdma_call_fowarding"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "urgenct_voicemail_notification_enable"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "support_setting_soft_reset"

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_83

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTablet()Z

    move-result v29

    if-nez v29, :cond_83

    const/16 v29, 0x1

    :goto_39
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "assisted_dialing_enable"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "feature_vzw"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "eri_info_label_enable"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "safety_emergency_contacts"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "emregency_dialer_home_recent_block"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "mute_menu_in_easy_mode"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "support_low_battery_sound_during_call"

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_84

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_84

    const/16 v29, 0x1

    :goto_3a
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "network_manual_selection_when_bootup"

    const-string v29, "klteMetroPCS"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_38

    const-string v29, "hltetmo"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_38

    const-string v29, "global_network_cdma_gsm_enable_for_vzw"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_85

    :cond_38
    const/16 v29, 0x1

    :goto_3b
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "network_auto_selection_when_bootup"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "change_network_mode_when_no_sim_bootup"

    const-string v31, "global_network_cdma_gsm_enable_for_vzw"

    invoke-static/range {v31 .. v31}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "auto_reject_notification"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "otasp_in_call_disable"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "show_internet_alert_popup_during_call"

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_39

    const-string v29, "gprimeltetfnvzw"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_86

    :cond_39
    const/16 v29, 0x1

    :goto_3c
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "disconnect_cause_description"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "not_support_hold_menu_for_vzw"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "disable_add_call_button"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "emergency_call_active_always"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_3a

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "support_easy_mode"

    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "support_help_easy_mode"

    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3a
    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "network_mode_global_lte_cdma_gsm_umts"

    const-string v29, "nobleltevzw"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_3b

    const-string v29, "zenltevzw"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_3b

    const-string v29, "zeroltevzw"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_3b

    const-string v29, "zerofltevzw"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_3b

    const-string v29, "kltevzw"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_3b

    const-string v29, "trltevzw"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_3b

    const-string v29, "tbltevzw"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_3b

    const-string v29, "noblelteusc"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_3b

    const-string v29, "zenlteusc"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_3b

    const-string v29, "zerolteusc"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_3b

    const-string v29, "zeroflteusc"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_3b

    const-string v29, "jfltevzw"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_87

    :cond_3b
    const/16 v29, 0x1

    :goto_3d
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "network_mode_global_lte_gsm"

    const-string v29, "viennaltevzw"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_3c

    const-string v29, "klimtltevzw"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_3c

    const-string v29, "matisseltevzw"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_3c

    const-string v29, "chagallltevzw"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_3c

    const-string v29, "lt03ltevzw"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_3c

    const-string v29, "milletltevzw"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_88

    :cond_3c
    const/16 v29, 0x1

    :goto_3e
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "network_mode_global_lte_wcdma"

    const-string v29, "gts210ltevzw"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_3d

    const-string v29, "gtelltevzw"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_89

    :cond_3d
    const/16 v29, 0x1

    :goto_3f
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "setting_search_vzw"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "network_mode_not_support_gsm"

    const-string v29, "chagallltetmo"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_3e

    const-string v29, "gts210ltetmo"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_3e

    const-string v29, "gt58ltetmo"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_3e

    const-string v29, "milletltetmo"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_8a

    :cond_3e
    const/16 v29, 0x1

    :goto_40
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "support_check_data_roaming"

    const-string v31, "nobleltevzw"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "set_system_setting_for_auto_answer"

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_3f

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_8b

    :cond_3f
    const/16 v29, 0x1

    :goto_41
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "system_selection_automatic_donot_hide"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "ignore_product_type"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "feature_att"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_40

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "allow_select_network_mode"

    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_40
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_41

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v30, "cprimelte"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_42

    :cond_41
    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "support_period_mark"

    const/16 v31, 0x1

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "support_wave_effect"

    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_42
    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "remove_call_barring"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "usa_gsm_support_femto_cell_network"

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_8c

    const-string v29, "zerofltetu"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_8c

    const-string v29, "jflteuc"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_8c

    const-string v29, "jactivelteuc"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_8c

    const/16 v29, 0x1

    :goto_42
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "network_mode_not_support_att"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "disable_popupmsg_when_deactivationcf"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "feature_tmo"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "wide_band_for_hd_icon"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "hd_icon_wideband"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "cs_e911"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "prohibit_second_call_in_emergency_call"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "update_hd_icon_by_intent"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v29, "common_volte"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_4d

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "vzw_volte_ui"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "att_volte_ui"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "tmo_volte_ui"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "mpcs_volte_ui"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "us_volte_ui"

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_43

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_43

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_43

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_8d

    :cond_43
    const/16 v29, 0x1

    :goto_43
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "volte_settings_in_mobile_networks"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "volte_call_waiting_terminal"

    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "incoming_call_widget_for_volte"

    const-string v31, "us_volte_ui"

    invoke-static/range {v31 .. v31}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "call_details_for_hd_icon"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "wireless_priority_service_call"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "gui_usa_fragment"

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_44

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_44

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_44

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_8e

    :cond_44
    const/16 v29, 0x1

    :goto_44
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "ui_for_usa"

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_45

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_45

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_45

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_8f

    :cond_45
    const/16 v29, 0x1

    :goto_45
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "ui_for_mpcs"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "support_rotation"

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_46

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_46

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_46

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_90

    :cond_46
    const/16 v29, 0x1

    :goto_46
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "clean_mode"

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_47

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_47

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_91

    :cond_47
    const/16 v29, 0x1

    :goto_47
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "answer_option"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "modify_call_us"

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_48

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_48

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_48

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_92

    :cond_48
    const/16 v29, 0x1

    :goto_48
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "vzw_sound_path"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "us_sound_path"

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_49

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_49

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_49

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_93

    :cond_49
    const/16 v29, 0x1

    :goto_49
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "data_usage_limit"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "us_show_on_hold"

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_4a

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_4a

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_4a

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_94

    :cond_4a
    const/16 v29, 0x1

    :goto_4a
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "ims_capability_service"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "epdg_call_for_vzw"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "disable_manage_conference_call"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_4b

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_95

    :cond_4b
    const/16 v29, 0x1

    :goto_4b
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "video_connected_as_voice"

    const-string v31, "att_volte_ui"

    invoke-static/range {v31 .. v31}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "handle_mt_hold_call_state"

    const-string v29, "vzw_volte_ui"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_4c

    const-string v29, "att_volte_ui"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_96

    :cond_4c
    const/16 v29, 0x1

    :goto_4c
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "dialing_capable_while_ims_registration_attempting"

    const-string v29, "vzw_volte_ui"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_97

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isSrlte()Z

    move-result v29

    if-eqz v29, :cond_97

    const/16 v29, 0x1

    :goto_4d
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "ims_only_conf_initiator_can_merge"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "enable_conference_info_banner"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "ims_capability_check_on_call_end"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4d
    const-string v29, "common_vt"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_4f

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "concept_usa_common"

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_4e

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_4e

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_4e

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_98

    :cond_4e
    const/16 v29, 0x1

    :goto_4e
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "concept_usa_att"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "concept_usa_tmo"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "concept_usa_vzw"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4f
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_50

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v30, "klteMetroPCS"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_50

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "remove_volte_outgoing_calltype_menu"

    const/16 v31, 0x1

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_50
    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "circle_endbutton"

    const-string v29, "kltevzw"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_51

    const-string v29, "jfltevzw"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_51

    const-string v29, "trltevzw"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_51

    const-string v29, "hltevzw"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_51

    const-string v29, "j1qltevzw"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_51

    const-string v29, "tbltevzw"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_99

    :cond_51
    const/16 v29, 0x1

    :goto_4f
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v29, "common_volte"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_52

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "non_volte_settings_in_mobile_networks"

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_9a

    const-string v29, "zerofltetu"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_9a

    const/16 v29, 0x1

    :goto_50
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "disable_mobile_data_settings"

    const-string v29, "zerofltetu"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_9b

    const/16 v29, 0x1

    :goto_51
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_52
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_53

    const-string v29, "klimtlteuc"

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_53

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "volte_settings_in_mobile_networks"

    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_53
    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "ims_rcs"

    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "ims_rcs_bb"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->hasRCSBlackBird()Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "change_order_of_endcall_buttons"

    const-string v29, "vzw_volte_ui"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_54

    const-string v29, "att_volte_ui"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_54

    const-string v29, "tmo_volte_ui"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_54

    const-string v29, "mpcs_volte_ui"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_9c

    :cond_54
    const/16 v29, 0x1

    :goto_52
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "geo_description_disable"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_9d

    const-string v29, "noblelteusc"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_9d

    const-string v29, "zenlteusc"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_9d

    const/16 v29, 0x1

    :goto_53
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "end_call_when_dial_e911"

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_55

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_9e

    :cond_55
    const/16 v29, 0x1

    :goto_54
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "show_switch_icon_in_button"

    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "show_switch_icon_on_call_card"

    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "disable_hd_icon"

    const/16 v31, 0x1

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "display_hd_icon"

    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "not_support_ims_conference_manage"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "not_support_ims_conference_split"

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_56

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_56

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_56

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_9f

    :cond_56
    const/16 v29, 0x1

    :goto_55
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "cdma_evdo_tfn"

    const-string v29, "gprimeltetfnvzw"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_57

    const-string v29, "e5ltetfnvzw"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_a0

    :cond_57
    const/16 v29, 0x1

    :goto_56
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "barge_in"

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    sget v32, Lcom/android/services/telephony/common/PhoneFeature;->IncomingBargin_command:I

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isBargeInEnabled(I)Z

    move-result v29

    if-eqz v29, :cond_a1

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v32, "gprimelte"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_a1

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v32, "e5lte"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_a1

    const/16 v29, 0x1

    :goto_57
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "not_support_caller_info_card"

    sget-object v31, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v32, "cprimelte"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v30, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v31, "silent_redial"

    const-string v29, "vzw_volte_ui"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_58

    const-string v29, "support_wfc"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_a2

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_a2

    :cond_58
    const/16 v29, 0x1

    :goto_58
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v29, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v30, "support_enhanced_4glte_setting_video_call"

    const-string v31, "marinelteuc"

    sget-object v32, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e

    :cond_59
    const/16 v29, 0x0

    goto/16 :goto_f

    :cond_5a
    const/16 v29, 0x0

    goto/16 :goto_10

    :cond_5b
    const/16 v29, 0x0

    goto/16 :goto_11

    :cond_5c
    const/16 v29, 0x0

    goto/16 :goto_12

    :cond_5d
    const/16 v29, 0x0

    goto/16 :goto_13

    :cond_5e
    const/16 v29, 0x0

    goto/16 :goto_14

    :cond_5f
    const/16 v29, 0x0

    goto/16 :goto_15

    :cond_60
    const/16 v29, 0x0

    goto/16 :goto_16

    :cond_61
    const/16 v29, 0x0

    goto/16 :goto_17

    :cond_62
    const/16 v29, 0x0

    goto/16 :goto_18

    :cond_63
    const/16 v29, 0x0

    goto/16 :goto_19

    :cond_64
    const/16 v29, 0x0

    goto/16 :goto_1a

    :cond_65
    const/16 v29, 0x0

    goto/16 :goto_1b

    :cond_66
    const/16 v29, 0x0

    goto/16 :goto_1c

    :cond_67
    const/16 v29, 0x0

    goto/16 :goto_1d

    :cond_68
    const/16 v29, 0x0

    goto/16 :goto_1e

    :cond_69
    const/16 v29, 0x0

    goto/16 :goto_1f

    :cond_6a
    const/16 v29, 0x0

    goto/16 :goto_20

    :cond_6b
    const/16 v29, 0x0

    goto/16 :goto_21

    :cond_6c
    const/16 v29, 0x0

    goto/16 :goto_22

    :cond_6d
    const/16 v29, 0x0

    goto/16 :goto_23

    :cond_6e
    const/16 v29, 0x0

    goto/16 :goto_24

    :cond_6f
    const/16 v29, 0x0

    goto/16 :goto_25

    :cond_70
    const/16 v29, 0x0

    goto/16 :goto_26

    :cond_71
    const/16 v29, 0x0

    goto/16 :goto_27

    :cond_72
    const/16 v29, 0x0

    goto/16 :goto_28

    :cond_73
    const/16 v29, 0x0

    goto/16 :goto_29

    :cond_74
    const/16 v29, 0x0

    goto/16 :goto_2a

    :cond_75
    const/16 v29, 0x0

    goto/16 :goto_2b

    :cond_76
    const/16 v29, 0x0

    goto/16 :goto_2c

    :cond_77
    const/16 v29, 0x0

    goto/16 :goto_2d

    :cond_78
    const/16 v29, 0x0

    goto/16 :goto_2e

    :cond_79
    const/16 v29, 0x0

    goto/16 :goto_2f

    :cond_7a
    const/16 v29, 0x0

    goto/16 :goto_30

    :cond_7b
    const/16 v29, 0x0

    goto/16 :goto_31

    :cond_7c
    const/16 v29, 0x0

    goto/16 :goto_32

    :cond_7d
    const/16 v29, 0x0

    goto/16 :goto_33

    :cond_7e
    const/16 v29, 0x0

    goto/16 :goto_34

    :cond_7f
    const/16 v29, 0x0

    goto/16 :goto_35

    :cond_80
    const/16 v29, 0x0

    goto/16 :goto_36

    :cond_81
    const/16 v29, 0x0

    goto/16 :goto_37

    :cond_82
    const/16 v29, 0x0

    goto/16 :goto_38

    :cond_83
    const/16 v29, 0x0

    goto/16 :goto_39

    :cond_84
    const/16 v29, 0x0

    goto/16 :goto_3a

    :cond_85
    const/16 v29, 0x0

    goto/16 :goto_3b

    :cond_86
    const/16 v29, 0x0

    goto/16 :goto_3c

    :cond_87
    const/16 v29, 0x0

    goto/16 :goto_3d

    :cond_88
    const/16 v29, 0x0

    goto/16 :goto_3e

    :cond_89
    const/16 v29, 0x0

    goto/16 :goto_3f

    :cond_8a
    const/16 v29, 0x0

    goto/16 :goto_40

    :cond_8b
    const/16 v29, 0x0

    goto/16 :goto_41

    :cond_8c
    const/16 v29, 0x0

    goto/16 :goto_42

    :cond_8d
    const/16 v29, 0x0

    goto/16 :goto_43

    :cond_8e
    const/16 v29, 0x0

    goto/16 :goto_44

    :cond_8f
    const/16 v29, 0x0

    goto/16 :goto_45

    :cond_90
    const/16 v29, 0x0

    goto/16 :goto_46

    :cond_91
    const/16 v29, 0x0

    goto/16 :goto_47

    :cond_92
    const/16 v29, 0x0

    goto/16 :goto_48

    :cond_93
    const/16 v29, 0x0

    goto/16 :goto_49

    :cond_94
    const/16 v29, 0x0

    goto/16 :goto_4a

    :cond_95
    const/16 v29, 0x0

    goto/16 :goto_4b

    :cond_96
    const/16 v29, 0x0

    goto/16 :goto_4c

    :cond_97
    const/16 v29, 0x0

    goto/16 :goto_4d

    :cond_98
    const/16 v29, 0x0

    goto/16 :goto_4e

    :cond_99
    const/16 v29, 0x0

    goto/16 :goto_4f

    :cond_9a
    const/16 v29, 0x0

    goto/16 :goto_50

    :cond_9b
    const/16 v29, 0x0

    goto/16 :goto_51

    :cond_9c
    const/16 v29, 0x0

    goto/16 :goto_52

    :cond_9d
    const/16 v29, 0x0

    goto/16 :goto_53

    :cond_9e
    const/16 v29, 0x0

    goto/16 :goto_54

    :cond_9f
    const/16 v29, 0x0

    goto/16 :goto_55

    :cond_a0
    const/16 v29, 0x0

    goto/16 :goto_56

    :cond_a1
    const/16 v29, 0x0

    goto/16 :goto_57

    :cond_a2
    const/16 v29, 0x0

    goto/16 :goto_58
.end method

.method public static makePreconditionForFeature()V
    .locals 2

    const-string v0, "DCM"

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "KDI"

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SBM"

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v1, "SC-04G"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "zeroltedcm"

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v1, "SC-05G"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "zerofltedcm"

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v1, "SCV31_jp_kdi"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "zeroltekdi"

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v1, "404SC"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "zeroltesbm"

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string v0, "SC-04F"

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "kltedcm"

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    goto :goto_0

    :cond_6
    const-string v0, "SC-02G"

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "kltedcmactive"

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    goto :goto_0

    :cond_7
    const-string v0, "SCL23"

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "kltekdi"

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    goto :goto_0

    :cond_8
    const-string v0, "SC-01G"

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "tbltedcm"

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    goto :goto_0

    :cond_9
    const-string v0, "SCL24"

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "tbltekdi"

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    goto :goto_0

    :cond_a
    const-string v0, "SC-03G"

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "klimtltedcm"

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    const-string v0, "SCT21"

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "chagallltekdi"

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v1, "SC-01F"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "hltedcm"

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    goto/16 :goto_0

    :cond_d
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v1, "SCL22"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "hltekdi"

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    goto/16 :goto_0

    :cond_e
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v1, "SC-02F"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "js01ltedcm"

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    goto/16 :goto_0

    :cond_f
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v1, "SC-04E"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "jfltedcm"

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public static needMuteGap()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "klte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "k3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "kqlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "kccat6xx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "lentislte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "kminilte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "kmini3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public static putFeature(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
