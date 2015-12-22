.class public Lcom/android/phone/BootupListener;
.super Landroid/content/BroadcastReceiver;
.source "BootupListener.java"


# static fields
.field static checked:Z


# instance fields
.field private final ACTION_DRIVELINK:Ljava/lang/String;

.field private boltSimSlot:I

.field private isNeedChangeNetworkModeOtherSim:Z

.field private final mHandler:Landroid/os/Handler;

.field private mPhones:[Lcom/android/internal/telephony/Phone;

.field private mRegistrationListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/BootupListener;->checked:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "com.sec.android.automotive.drivelink.NAVIGATION_PACKAGE_NAME"

    iput-object v0, p0, Lcom/android/phone/BootupListener;->ACTION_DRIVELINK:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BootupListener;->isNeedChangeNetworkModeOtherSim:Z

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhoneCount()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/phone/BootupListener;->mPhones:[Lcom/android/internal/telephony/Phone;

    new-instance v0, Lcom/android/phone/BootupListener$2;

    invoke-direct {v0, p0}, Lcom/android/phone/BootupListener$2;-><init>(Lcom/android/phone/BootupListener;)V

    iput-object v0, p0, Lcom/android/phone/BootupListener;->mRegistrationListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    new-instance v0, Lcom/android/phone/BootupListener$3;

    invoke-direct {v0, p0}, Lcom/android/phone/BootupListener$3;-><init>(Lcom/android/phone/BootupListener;)V

    iput-object v0, p0, Lcom/android/phone/BootupListener;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/BootupListener;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/phone/BootupListener;

    iget-object v0, p0, Lcom/android/phone/BootupListener;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/BootupListener;)Z
    .locals 1
    .param p0    # Lcom/android/phone/BootupListener;

    iget-boolean v0, p0, Lcom/android/phone/BootupListener;->isNeedChangeNetworkModeOtherSim:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/phone/BootupListener;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/BootupListener;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/BootupListener;->isNeedChangeNetworkModeOtherSim:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/BootupListener;)[Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0    # Lcom/android/phone/BootupListener;

    iget-object v0, p0, Lcom/android/phone/BootupListener;->mPhones:[Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/BootupListener;)I
    .locals 1
    .param p0    # Lcom/android/phone/BootupListener;

    iget v0, p0, Lcom/android/phone/BootupListener;->boltSimSlot:I

    return v0
.end method

.method private isShouldForceNetworkMode(I)Z
    .locals 4
    .param p1    # I

    const/4 v0, 0x1

    const-string v1, "BootupListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "simSlot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-static {p1}, Lcom/android/phone/PhoneUtilsMultiSIM;->isBoltSIM(I)Z

    move-result v1

    if-eqz v1, :cond_0

    xor-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsMultiSIM;->isBoltSIM(I)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 33
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v15, p1

    const-string v29, "BootupListener"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "onReceive : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x1

    invoke-static/range {v29 .. v31}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v29, "android.intent.action.SIM_STATE_CHANGED"

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_11

    const-string v29, "phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v25 .. v25}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v23

    const/16 v24, 0x1

    const-string v29, "feature_multisim"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_0

    const/16 v29, 0x0

    invoke-static/range {v29 .. v29}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimState(I)I

    move-result v23

    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimState(I)I

    move-result v24

    :cond_0
    invoke-virtual/range {v25 .. v25}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v6

    const-string v29, "ril.FS"

    invoke-static/range {v29 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v5, "999999999999999"

    const-string v29, "bootup_data_connection_popup"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_1

    const-string v29, "bootup_data_tariff_rate_popup"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_8

    :cond_1
    const-string v29, "999999999999999"

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_2

    const-string v29, "true"

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_8

    :cond_2
    const/16 v29, 0x5

    move/from16 v0, v23

    move/from16 v1, v29

    if-eq v0, v1, :cond_3

    const/16 v29, 0x5

    move/from16 v0, v24

    move/from16 v1, v29

    if-ne v0, v1, :cond_8

    :cond_3
    const/16 v29, 0x1

    move/from16 v0, v23

    move/from16 v1, v29

    if-ne v0, v1, :cond_4

    const/16 v29, 0x1

    move/from16 v0, v24

    move/from16 v1, v29

    if-eq v0, v1, :cond_8

    :cond_4
    const-string v29, "hot_swap_type_qcom"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_6

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/phone/PhoneGlobals;->getHotSwapHappen()Z

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_6

    const-string v29, "BootupListener"

    const-string v30, "hot swap case, so do not display popup"

    invoke-static/range {v29 .. v30}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return-void

    :cond_6
    const-string v29, "ril.defaultdataSIMchange"

    const-string v30, "false"

    invoke-static/range {v29 .. v30}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v29

    const-string v30, "true"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_c

    const-string v29, "BootupListener"

    const-string v30, "sim card in the slot of default data preferred is changed"

    invoke-static/range {v29 .. v30}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v29, "ril.defaultdataSIMchange"

    const-string v30, "false"

    invoke-static/range {v29 .. v30}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Landroid/content/Intent;

    const-class v29, Lcom/android/phone/FlatRateAlertActivity;

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v29, 0x10000000

    move/from16 v0, v29

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v29, "BootupListener"

    const-string v30, "onReceive : Intent = FlatRateAlertActivity"

    invoke-static/range {v29 .. v30}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v18, Lcom/android/phone/BootupListener$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15, v9}, Lcom/android/phone/BootupListener$1;-><init>(Lcom/android/phone/BootupListener;Landroid/content/Context;Landroid/content/Intent;)V

    const-string v29, "XEO"

    const-string v30, "ro.csc.sales_code"

    invoke-static/range {v30 .. v30}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_7

    const-string v29, "PLS"

    const-string v30, "ro.csc.sales_code"

    invoke-static/range {v30 .. v30}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_7

    const-string v29, "TPL"

    const-string v30, "ro.csc.sales_code"

    invoke-static/range {v30 .. v30}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_7

    const-string v29, "PRT"

    const-string v30, "ro.csc.sales_code"

    invoke-static/range {v30 .. v30}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_7

    const-string v29, "feature_chn"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_7

    const-string v29, "feature_hktw"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_e

    :cond_7
    const-string v29, "persist.sys.setupwizard"

    invoke-static/range {v29 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_d

    const-string v29, "FINISH"

    const-string v30, "persist.sys.setupwizard"

    invoke-static/range {v30 .. v30}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_d

    const-string v29, "BootupListener"

    const-string v30, "Setup wizard is launched. Start FlatRateAlertActivity for Poland."

    invoke-static/range {v29 .. v30}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_8
    :goto_1
    const-string v29, "common_volte_hk"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_5

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v29

    if-eqz v29, :cond_5

    const-string v29, "feature_kor_open"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_9

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isKTSIM()Z

    move-result v29

    if-eqz v29, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "default_voicecallType_cs"

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    if-nez v26, :cond_9

    const-string v29, "hd_voice_network_prefer_default_on"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "hd_voice_network_pref"

    const/16 v31, 0x1

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "voicecall_type"

    const/16 v31, 0x1

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "default_voicecallType_cs"

    const/16 v31, 0x1

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_9
    const-string v29, "mm1_volte_ui"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_a

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isMM1_VOLTE()Z

    move-result v29

    if-nez v29, :cond_b

    :cond_a
    const-string v29, "feature_ktt"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_5

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isNovel()Z

    move-result v29

    if-eqz v29, :cond_5

    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "default_voicecallType_cs"

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    if-nez v26, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "voicecall_type"

    const/16 v31, 0x1

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "default_voicecallType_cs"

    const/16 v31, 0x1

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_c
    const-string v29, "BootupListener"

    const-string v30, "sim card in the slot of default data preferred is not changed"

    invoke-static/range {v29 .. v30}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    const-string v29, "BootupListener"

    const-string v30, "Setup wizard state. So skip the FlatRateAlertActivity for Poland."

    invoke-static/range {v29 .. v30}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_e
    const-string v29, "persist.sys.setupwizard"

    invoke-static/range {v29 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_f

    const-string v29, "persist.sys.setupwizard"

    invoke-static/range {v29 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_f

    const-string v29, "BootupListener"

    const-string v30, "Setup wizard is launched. Start FlatRateAlertActivity."

    invoke-static/range {v29 .. v30}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_f
    const-string v29, "BootupListener"

    const-string v30, "DATA_POPUP_DELAY_SEC is set."

    invoke-static/range {v29 .. v30}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v27, Ljava/util/Timer;

    invoke-direct/range {v27 .. v27}, Ljava/util/Timer;-><init>()V

    const-wide/16 v30, 0x7530

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_1

    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "hd_voice_network_pref"

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_11
    const-string v29, "com.sec.android.automotive.drivelink.NAVIGATION_PACKAGE_NAME"

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_12

    const-string v4, "drivelink_navigation"

    const-string v7, "INTENT_KEY_NAVIGATION_PACKAGE_NAME"

    const-string v29, "BootupListener"

    const-string v30, "ACTION_DRIVELINK"

    const/16 v31, 0x1

    invoke-static/range {v29 .. v31}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v29, "INTENT_KEY_NAVIGATION_PACKAGE_NAME"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_5

    const-string v29, "INTENT_KEY_NAVIGATION_PACKAGE_NAME"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "drivelink_navigation"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v29, "BootupListener"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "NAVI : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x1

    invoke-static/range {v29 .. v31}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_0

    :cond_12
    const-string v29, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v29

    if-nez v29, :cond_13

    const-string v29, "disable_sip_call_setting"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_1a

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "internet_call_settings_visibility"

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_13
    :goto_3
    const-string v29, "block_data_during_call"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_14

    const/16 v28, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "enable_call_protect_when_calling"

    invoke-static/range {v29 .. v30}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v28

    const-string v29, "BootupListener"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "enable_call_protect_when_calling : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_14
    :goto_4
    const-string v29, "volte_call_waiting_terminal"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_17

    const-string v29, "persist.ril.ims.eutranParam"

    const/16 v30, 0x0

    invoke-static/range {v29 .. v30}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v29

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_17

    const/16 v29, 0x6

    move/from16 v0, v29

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForSSConfig;

    const-string v29, "BootupListener"

    const-string v30, "VOLTE_CALL_WAITING_TERMINAL"

    const/16 v31, 0x1

    invoke-static/range {v29 .. v31}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const/4 v10, 0x1

    const-string v29, "feature_chn"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_15

    invoke-static {}, Lcom/android/phone/PhoneUtilsCHN;->isCMCCSIM()Z

    move-result v10

    :cond_15
    if-eqz v10, :cond_17

    const-string v29, "volte_call_waiting_default_off"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_1e

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "volte_call_waiting"

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1d

    const/16 v29, 0x1

    :goto_5
    sput-boolean v29, Lcom/android/phone/BootupListener;->checked:Z

    :goto_6
    const/16 v21, 0x0

    sget-boolean v29, Lcom/android/phone/BootupListener;->checked:Z

    if-eqz v29, :cond_20

    if-eqz v16, :cond_16

    const/16 v29, 0xff

    const/16 v30, 0x3

    :try_start_1
    move-object/from16 v0, v16

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForSSConfig;->setCacheCallWaiting(II)I
    :try_end_1
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v21

    :cond_16
    :goto_7
    const-string v29, "BootupListener"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "setCacheCallWaiting. checked = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    sget-boolean v31, Lcom/android/phone/BootupListener;->checked:Z

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", result = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x1

    invoke-static/range {v29 .. v31}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_17
    const-string v29, "common_volte_hk"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_18

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v29

    if-eqz v29, :cond_18

    const/16 v28, 0x0

    const/16 v20, 0x0

    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "voicecall_type"

    invoke-static/range {v29 .. v30}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v28

    const-string v29, "BootupListener"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "voicecall_type : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    :goto_8
    const-string v29, "hd_voice_network_prefer"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_18

    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "hd_voice_network_pref"

    invoke-static/range {v29 .. v30}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v20

    const-string v29, "BootupListener"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "hd_voice_network_pref : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_18
    :goto_9
    const-string v29, "volte_settings_in_mobile_networks_eur"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_19

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v29

    if-eqz v29, :cond_19

    const-string v29, "persist.ril.ims.eutranParam"

    const/16 v30, 0x0

    invoke-static/range {v29 .. v30}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v29

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_19

    const/16 v29, 0x7

    move/from16 v0, v29

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v17, :cond_19

    const-string v29, "BootupListener"

    const-string v30, "registerForServiceStateChange..."

    const/16 v31, 0x1

    invoke-static/range {v29 .. v31}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BootupListener;->mRegistrationListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    move-object/from16 v29, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->registerForServiceStateChange(Lcom/samsung/commonimsinterface/imscommon/IIMSListener;)V

    invoke-interface/range {v17 .. v17}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->isIMSServiceReady()Z

    move-result v29

    if-eqz v29, :cond_19

    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "voicecall_type"

    invoke-static/range {v29 .. v30}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v11

    const-string v29, "BootupListener"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "isIMSServiceReady voicecall_type = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x1

    invoke-static/range {v29 .. v31}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_4
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_4 .. :try_end_4} :catch_5

    :cond_19
    :goto_a
    const-string v29, "force_lte_for_bolt_sim_after_device_reboot_complete"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_5

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getInsertedSimCard()I

    move-result v14

    const-string v29, "BootupListener"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "insertedSimNum =   "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v29, 0x2

    move/from16 v0, v29

    if-lt v14, v0, :cond_2e

    const/16 v22, 0x0

    :goto_b
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhoneCount()I

    move-result v29

    move/from16 v0, v22

    move/from16 v1, v29

    if-ge v0, v1, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BootupListener;->mPhones:[Lcom/android/internal/telephony/Phone;

    move-object/from16 v29, v0

    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v30

    aput-object v30, v29, v22

    add-int/lit8 v22, v22, 0x1

    goto :goto_b

    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "internet_call_settings_visibility"

    const/16 v31, 0x1

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :catch_0
    move-exception v12

    const-string v29, "feature_skt"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_1b

    const-string v29, "tablet_device"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_1c

    const/16 v28, 0x0

    :cond_1b
    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "enable_call_protect_when_calling"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v29, "BootupListener"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "enable_call_protect_when_calling : null->"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_1c
    const/16 v28, 0x1

    goto :goto_c

    :cond_1d
    const/16 v29, 0x0

    goto/16 :goto_5

    :cond_1e
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "volte_call_waiting"

    const/16 v31, 0x1

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1f

    const/16 v29, 0x1

    :goto_d
    sput-boolean v29, Lcom/android/phone/BootupListener;->checked:Z

    goto/16 :goto_6

    :cond_1f
    const/16 v29, 0x0

    goto :goto_d

    :catch_1
    move-exception v12

    invoke-virtual {v12}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto/16 :goto_7

    :cond_20
    if-eqz v16, :cond_16

    const/16 v29, 0xff

    const/16 v30, 0x4

    :try_start_5
    move-object/from16 v0, v16

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForSSConfig;->setCacheCallWaiting(II)I
    :try_end_5
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_5 .. :try_end_5} :catch_2

    move-result v21

    goto/16 :goto_7

    :catch_2
    move-exception v12

    invoke-virtual {v12}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto/16 :goto_7

    :catch_3
    move-exception v12

    const-string v29, "feature_skt"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_21

    const-string v29, "feature_ktt"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_21

    const-string v29, "volte_outgoing_calltype_default_on"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_22

    :cond_21
    const-string v29, "volte_outgoing_calltype_default_on"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_28

    const/16 v28, 0x0

    :goto_e
    const-string v29, "BootupListener"

    const-string v30, "voicecall_type configure."

    invoke-static/range {v29 .. v30}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    const-string v29, "mm1_volte_ui"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_23

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isMM1_VOLTE()Z

    move-result v29

    if-eqz v29, :cond_23

    const/16 v28, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "default_voicecallType_cs"

    const/16 v31, 0x1

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_23
    const-string v29, "volte_settings_in_mobile_networks_chn"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_24

    const/16 v28, 0x1

    :cond_24
    const-string v29, "hd_voice_network_prefer"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_25

    const-string v29, "hd_voice_network_prefer_default_on"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_29

    const/16 v28, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "hd_voice_network_pref"

    const/16 v31, 0x1

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_25
    :goto_f
    const-string v29, "feature_kor_open"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_26

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isKTSIM()Z

    move-result v29

    if-eqz v29, :cond_26

    const/16 v28, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "default_voicecallType_cs"

    const/16 v31, 0x1

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v29, "hd_voice_network_prefer_default_on"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_2a

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "hd_voice_network_pref"

    const/16 v31, 0x1

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_26
    :goto_10
    const-string v29, "feature_ktt"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_27

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isNovel()Z

    move-result v29

    if-eqz v29, :cond_27

    const/16 v28, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "default_voicecallType_cs"

    const/16 v31, 0x1

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_27
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "voicecall_type"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v29, "BootupListener"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "voicecall_type : null->"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_28
    const/16 v28, 0x1

    goto/16 :goto_e

    :cond_29
    const/16 v28, 0x2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "hd_voice_network_pref"

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_f

    :cond_2a
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "hd_voice_network_pref"

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_10

    :catch_4
    move-exception v12

    if-nez v28, :cond_2b

    const/16 v20, 0x1

    :goto_11
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "hd_voice_network_pref"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v29, "BootupListener"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "voicecall_type : null->"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_2b
    const/16 v20, 0x0

    goto :goto_11

    :catch_5
    move-exception v12

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "voicecall_type"

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v29, "BootupListener"

    const-string v30, "isIMSServiceReady voicecall_type = volte"

    const/16 v31, 0x1

    invoke-static/range {v29 .. v31}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_a

    :cond_2c
    const/16 v22, 0x0

    :goto_12
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhoneCount()I

    move-result v29

    move/from16 v0, v22

    move/from16 v1, v29

    if-ge v0, v1, :cond_5

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/phone/BootupListener;->isShouldForceNetworkMode(I)Z

    move-result v29

    if-eqz v29, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BootupListener;->mPhones:[Lcom/android/internal/telephony/Phone;

    move-object/from16 v29, v0

    xor-int/lit8 v30, v22, 0x1

    aget-object v29, v29, v30

    const/16 v30, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BootupListener;->mHandler:Landroid/os/Handler;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v31

    invoke-interface/range {v29 .. v31}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/BootupListener;->isNeedChangeNetworkModeOtherSim:Z

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/BootupListener;->boltSimSlot:I

    :cond_2d
    add-int/lit8 v22, v22, 0x1

    goto :goto_12

    :cond_2e
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getCurrentNetworkPhoneId()I

    move-result v22

    const-string v29, "BootupListener"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "simSlotNum =   "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BootupListener;->mPhones:[Lcom/android/internal/telephony/Phone;

    move-object/from16 v29, v0

    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v30

    aput-object v30, v29, v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/phone/BootupListener;->isShouldForceNetworkMode(I)Z

    move-result v29

    if-eqz v29, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BootupListener;->mPhones:[Lcom/android/internal/telephony/Phone;

    move-object/from16 v29, v0

    aget-object v29, v29, v22

    const/16 v30, 0xb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BootupListener;->mHandler:Landroid/os/Handler;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v31

    invoke-interface/range {v29 .. v31}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0
.end method
