.class public Lcom/android/settings/ApnSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ApnSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/multisim/MultiSimTabInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ApnSettings$5;,
        Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;,
        Lcom/android/settings/ApnSettings$RestoreApnUiHandler;
    }
.end annotation


# static fields
.field private static final DEFAULTAPN_URI:Landroid/net/Uri;

.field private static final DEFAULTAPN_URI_USING_SUBID:Landroid/net/Uri;

.field static final PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

.field public static final PREFERAPN_URI_USING_SUBID:Landroid/net/Uri;

.field private static mRestoreDefaultApnMode:Z


# instance fields
.field apnList:Landroid/preference/PreferenceGroup;

.field private hideApnList:[Ljava/lang/String;

.field private mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDelayHandler:Landroid/os/Handler;

.field private mDelayRunnable:Ljava/lang/Runnable;

.field private mMobileStateFilter:Landroid/content/IntentFilter;

.field private final mMobileStateReceiver:Landroid/content/BroadcastReceiver;

.field private mRestoreApnProcessHandler:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

.field private mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

.field private mRestoreDefaultApnThread:Landroid/os/HandlerThread;

.field private mRestoreDlg:Landroid/app/AlertDialog;

.field private mRestoreHandler:Landroid/os/Handler;

.field private mRestoreRunnable:Ljava/lang/Runnable;

.field private mRestoring:Landroid/app/ProgressDialog;

.field private mSelectedCTNETKey:Ljava/lang/String;

.field private mSelectedKey:Ljava/lang/String;

.field private final mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherStateFilter:Landroid/content/IntentFilter;

.field private mUm:Landroid/os/UserManager;

.field private mUnavailable:Z

.field private mccmnc:Ljava/lang/String;

.field private pref_vzwdefault:Lcom/android/settings/ApnPreference;

.field private tIntent:Landroid/content/Intent;

.field private tabHandler:Lcom/android/settings/multisim/MultiSimTabHandler;

.field private vzwapn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://telephony/carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    const-string v0, "content://telephony/carriers/preferapn/subId/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnSettings;->PREFERAPN_URI_USING_SUBID:Landroid/net/Uri;

    const-string v0, "content://telephony/carriers/restore/subId/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnSettings;->DEFAULTAPN_URI_USING_SUBID:Landroid/net/Uri;

    const-string v0, "content://telephony/carriers/preferapn_no_update/subId/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnSettings;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mDelayHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/settings/ApnSettings;->hideApnList:[Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/settings/ApnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ApnSettings$1;-><init>(Lcom/android/settings/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/ApnSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/ApnSettings$2;-><init>(Lcom/android/settings/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/ApnSettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/ApnSettings$3;-><init>(Lcom/android/settings/ApnSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1

    invoke-static {p0}, Lcom/android/settings/ApnSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/ApnSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mSelectedCTNETKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/android/settings/ApnSettings;)Lcom/android/settings/ApnPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->pref_vzwdefault:Lcom/android/settings/ApnPreference;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/ApnSettings;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoring:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/ApnSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/settings/ApnSettings;->DEFAULTAPN_URI_USING_SUBID:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1500()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/settings/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/ApnSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->fillList()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/ApnSettings;)Lcom/android/settings/ApnSettings$RestoreApnUiHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/ApnSettings;Lcom/android/settings/ApnSettings$RestoreApnUiHandler;)Lcom/android/settings/ApnSettings$RestoreApnUiHandler;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/ApnSettings;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings/ApnSettings;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ApnSettings;->mRestoreRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/settings/ApnSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/ApnSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->restoreDefaultApn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/ApnSettings;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/ApnSettings;)Lcom/android/settings/multisim/MultiSimTabHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->tabHandler:Lcom/android/settings/multisim/MultiSimTabHandler;

    return-object v0
.end method

.method private addNewApn()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "simSlot"

    iget-object v2, p0, Lcom/android/settings/ApnSettings;->tabHandler:Lcom/android/settings/multisim/MultiSimTabHandler;

    invoke-virtual {v2}, Lcom/android/settings/multisim/MultiSimTabHandler;->getSimSlot()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "vzw"

    const-string v2, "editable"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettings;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    const-string v1, "SPR"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "keyString"

    const-string v2, "hidden"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private dualSimMPS_DataLock(I)Z
    .locals 5

    const-string v2, "AddDataLock"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_ConfigSimLock"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "gsm.sim.operator.numeric"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v0, v1, p1

    const-string v2, "persist.radio.networklocklist"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DataLockFeature] Enable for operator = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", simSlot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const-string v2, "ApnSettings"

    const-string v3, "DataLockFeature is disable"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private fillList()V
    .locals 28

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "numeric=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnSettings;->tIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/ApnSettings;->tabHandler:Lcom/android/settings/multisim/MultiSimTabHandler;

    invoke-virtual {v5}, Lcom/android/settings/multisim/MultiSimTabHandler;->getSimSlot()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/ApnSettings;->mccmnc:Ljava/lang/String;

    invoke-static {v4, v5, v10}, Lcom/android/settings/Utils;->getNumericString(Landroid/content/Intent;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/ApnSettings;->tIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/ApnSettings;->tabHandler:Lcom/android/settings/multisim/MultiSimTabHandler;

    invoke-virtual {v10}, Lcom/android/settings/multisim/MultiSimTabHandler;->getSimSlot()I

    move-result v10

    invoke-static {v4, v5, v10}, Lcom/android/settings/Utils;->appendWhereString(Landroid/content/Context;Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnSettings;->tabHandler:Lcom/android/settings/multisim/MultiSimTabHandler;

    invoke-virtual {v4}, Lcom/android/settings/multisim/MultiSimTabHandler;->getSimSlot()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/ApnSettings;->mccmnc:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-static {v2, v0, v4, v5}, Lcom/android/settings/Utils;->getApnCursor(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_12

    const-string v2, "ApnSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "count of apn from telephony db : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "apn_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->pref_vzwdefault:Lcom/android/settings/ApnPreference;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnSettings;->pref_vzwdefault:Lcom/android/settings/ApnPreference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getSelectedApnKey()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "ApnSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fillList: where = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnSettings;->mSelectedCTNETKey:Ljava/lang/String;

    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_10

    const/4 v2, 0x1

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x3

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v2, "CTNET"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/settings/ApnSettings;->mSelectedCTNETKey:Ljava/lang/String;

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnSettings;->tIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/ApnSettings;->mccmnc:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/ApnSettings;->tabHandler:Lcom/android/settings/multisim/MultiSimTabHandler;

    invoke-virtual {v10}, Lcom/android/settings/multisim/MultiSimTabHandler;->getSimSlot()I

    move-result v10

    invoke-static/range {v2 .. v10}, Lcom/android/settings/Utils;->skipApn(Landroid/content/Context;Landroid/database/Cursor;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "ApnSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "skip apn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->hideApnList:[Ljava/lang/String;

    invoke-static {v2, v7}, Lcom/android/settings/Utils;->isHideApn([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->hideApnList:[Ljava/lang/String;

    invoke-static {v2, v6}, Lcom/android/settings/Utils;->isHideApn([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->tIntent:Landroid/content/Intent;

    invoke-static {v2}, Lcom/android/settings/Utils;->isVzwEditable(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->mccmnc:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/Utils;->isVZWSimInserted(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_5
    new-instance v23, Lcom/android/settings/ApnPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/ApnSettings;->tabHandler:Lcom/android/settings/multisim/MultiSimTabHandler;

    invoke-virtual {v5}, Lcom/android/settings/multisim/MultiSimTabHandler;->getSimSlot()I

    move-result v5

    move-object/from16 v0, v23

    invoke-direct {v0, v2, v4, v5}, Lcom/android/settings/ApnPreference;-><init>(Landroid/content/Context;II)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/ApnSettings;->mccmnc:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->tabHandler:Lcom/android/settings/multisim/MultiSimTabHandler;

    invoke-virtual {v2}, Lcom/android/settings/multisim/MultiSimTabHandler;->getSimSlot()I

    move-result v13

    move-object v11, v3

    move-object v14, v7

    move-object v15, v6

    invoke-static/range {v10 .. v15}, Lcom/android/settings/Utils;->modifyApn(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    const/4 v2, 0x0

    aget-object v6, v22, v2

    const/4 v2, 0x1

    aget-object v7, v22, v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Lcom/android/settings/ApnPreference;->setKey(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lcom/android/settings/ApnPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/settings/Utils;->isJapanKDIModel()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isJapanSBMModel()Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "fourgsmartphone"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "Application"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "ApnSettings"

    const-string v4, "do not summary SBM request"

    invoke-static {v2, v4}, Lcom/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/ApnSettings;->mccmnc:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->tabHandler:Lcom/android/settings/multisim/MultiSimTabHandler;

    invoke-virtual {v2}, Lcom/android/settings/multisim/MultiSimTabHandler;->getSimSlot()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object v11, v3

    move-object v14, v7

    move-object v15, v6

    move-object/from16 v16, v8

    invoke-static/range {v10 .. v17}, Lcom/android/settings/Utils;->getApnCheckState(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_7

    invoke-virtual/range {v23 .. v23}, Lcom/android/settings/ApnPreference;->setChecked()V

    :cond_7
    const-string v2, "ApnSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pref "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " 1/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnPreference;->setPersistent(Z)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/ApnSettings;->tIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/ApnSettings;->mccmnc:Ljava/lang/String;

    move-object v13, v6

    move-object v14, v7

    move-object v15, v8

    move-object/from16 v16, v9

    invoke-static/range {v10 .. v16}, Lcom/android/settings/Utils;->getSelectableEnableState(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Z

    move-result-object v26

    const/4 v2, 0x0

    aget-boolean v2, v26, v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnPreference;->setSelectable(Z)V

    const-string v2, "ApnSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selectable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-boolean v5, v26, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mSelectedKey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    aget-boolean v2, v26, v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnPreference;->setEnabled(Z)V

    const/4 v2, 0x2

    aget-boolean v2, v26, v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnPreference;->setEditable(Z)V

    const/4 v2, 0x0

    aget-boolean v2, v26, v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual/range {v23 .. v23}, Lcom/android/settings/ApnPreference;->setChecked()V

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->tabHandler:Lcom/android/settings/multisim/MultiSimTabHandler;

    invoke-virtual {v2}, Lcom/android/settings/multisim/MultiSimTabHandler;->getSimSlot()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/ApnSettings;->dualSimMPS_DataLock(I)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->tIntent:Landroid/content/Intent;

    invoke-static {v2}, Lcom/android/settings/Utils;->isSprEditable(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->mccmnc:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/Utils;->isSPRSimInserted(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    new-instance v23, Lcom/android/settings/ApnPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/ApnSettings;->tabHandler:Lcom/android/settings/multisim/MultiSimTabHandler;

    invoke-virtual {v5}, Lcom/android/settings/multisim/MultiSimTabHandler;->getSimSlot()I

    move-result v5

    move-object/from16 v0, v23

    invoke-direct {v0, v2, v4, v5}, Lcom/android/settings/ApnPreference;-><init>(Landroid/content/Context;II)V

    goto/16 :goto_1

    :cond_b
    new-instance v23, Lcom/android/settings/ApnPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/ApnSettings;->tabHandler:Lcom/android/settings/multisim/MultiSimTabHandler;

    invoke-virtual {v5}, Lcom/android/settings/multisim/MultiSimTabHandler;->getSimSlot()I

    move-result v5

    move-object/from16 v0, v23

    invoke-direct {v0, v2, v4, v5}, Lcom/android/settings/ApnPreference;-><init>(Landroid/content/Context;II)V

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/android/settings/ApnPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->tabHandler:Lcom/android/settings/multisim/MultiSimTabHandler;

    invoke-virtual {v2}, Lcom/android/settings/multisim/MultiSimTabHandler;->getSimSlot()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/ApnSettings;->dualSimMPS_DataLock(I)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_10
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/preference/Preference;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_4

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/ApnSettings;->tabHandler:Lcom/android/settings/multisim/MultiSimTabHandler;

    invoke-virtual {v5}, Lcom/android/settings/multisim/MultiSimTabHandler;->getSimSlot()I

    move-result v5

    invoke-static {v2, v4, v5}, Lcom/android/settings/Utils;->isEnableApnList(Landroid/preference/PreferenceGroup;Landroid/preference/PreferenceGroup;I)Z

    move-result v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    :cond_12
    return-void
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 2

    const-string v1, "state"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0
.end method

.method private getSelectedApnKey()Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/ApnSettings;->tabHandler:Lcom/android/settings/multisim/MultiSimTabHandler;

    invoke-virtual {v3}, Lcom/android/settings/multisim/MultiSimTabHandler;->getSimSlot()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/ApnSettings;->tabHandler:Lcom/android/settings/multisim/MultiSimTabHandler;

    invoke-virtual {v4}, Lcom/android/settings/multisim/MultiSimTabHandler;->getSubId()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/Utils;->getSelectedApnKeyCursor(Landroid/content/Context;IJ)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v2, v1

    goto :goto_0
.end method

.method private goAddApn()V
    .locals 3

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.intent.action.ADD_APN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "simSlot"

    iget-object v2, p0, Lcom/android/settings/ApnSettings;->tabHandler:Lcom/android/settings/multisim/MultiSimTabHandler;

    invoke-virtual {v2}, Lcom/android/settings/multisim/MultiSimTabHandler;->getSimSlot()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, ":settings:show_fragment_as_subsetting"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettings;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private initVZWApnPreference()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Lcom/android/settings/ApnPreference;

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/ApnPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->pref_vzwdefault:Lcom/android/settings/ApnPreference;

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->pref_vzwdefault:Lcom/android/settings/ApnPreference;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnPreference;->setKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->pref_vzwdefault:Lcom/android/settings/ApnPreference;

    const-string v1, "LTE - Verizon Internet"

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->pref_vzwdefault:Lcom/android/settings/ApnPreference;

    const-string v1, "VZWINTERNET"

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "db_vzw_default_apn_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->vzwapn:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->vzwapn:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->pref_vzwdefault:Lcom/android/settings/ApnPreference;

    iget-object v1, p0, Lcom/android/settings/ApnSettings;->vzwapn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->pref_vzwdefault:Lcom/android/settings/ApnPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnPreference;->setPersistent(Z)V

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->pref_vzwdefault:Lcom/android/settings/ApnPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnPreference;->setSelectable(Z)V

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->pref_vzwdefault:Lcom/android/settings/ApnPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->pref_vzwdefault:Lcom/android/settings/ApnPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ApnPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private restoreDefaultApn()Z
    .locals 4

    const/4 v3, 0x1

    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettings;->showDialog(I)V

    sput-boolean v3, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/settings/ApnSettings;Lcom/android/settings/ApnSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Restore default APN Handler: Process Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;-><init>(Lcom/android/settings/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

    :cond_2
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

    invoke-virtual {v0, v3}, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->sendEmptyMessage(I)Z

    return v3
.end method

.method private setSelectedApnKey(Ljava/lang/String;)V
    .locals 6

    iput-object p1, p0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "apn_id"

    iget-object v3, p0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/ApnSettings;->tabHandler:Lcom/android/settings/multisim/MultiSimTabHandler;

    invoke-virtual {v2}, Lcom/android/settings/multisim/MultiSimTabHandler;->getSimSlot()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/ApnSettings;->tabHandler:Lcom/android/settings/multisim/MultiSimTabHandler;

    invoke-virtual {v3}, Lcom/android/settings/multisim/MultiSimTabHandler;->getSubId()J

    move-result-wide v4

    invoke-static {v0, v1, v2, v4, v5}, Lcom/android/settings/Utils;->updateSelectedApnKey(Landroid/content/ContentResolver;Landroid/content/ContentValues;IJ)V

    return-void
.end method

.method private showWarning()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a06aa

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a06b0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/ApnSettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings/ApnSettings$4;-><init>(Lcom/android/settings/ApnSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ApnSettings;->mRestoreDlg:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v2, 0x7f0a0876

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/ApnSettings;->mUm:Landroid/os/UserManager;

    const-string v3, "no_config_mobile_networks"

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v4, p0, Lcom/android/settings/ApnSettings;->mUnavailable:Z

    new-instance v2, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/ApnSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    :goto_0
    return-void

    :cond_1
    const v2, 0x7f070012

    invoke-virtual {p0, v2}, Lcom/android/settings/ApnSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v2, p0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/settings/Utils;->insetDivider(Landroid/content/Context;Landroid/widget/ListView;)V

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ApnSettings;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/settings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    iget-object v2, p0, Lcom/android/settings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SIM_PROFILE_UPDATE_DONE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.UPDATE_CURRENT_CARRIER_DONE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.CSC_CONNECTION_RESET_DONE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/settings/ApnSettings;->mTetherStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ApnSettings;->tIntent:Landroid/content/Intent;

    invoke-static {}, Lcom/android/settings/Utils;->initHideList()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ApnSettings;->hideApnList:[Ljava/lang/String;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mUm:Landroid/os/UserManager;

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mUm:Landroid/os/UserManager;

    const-string v1, "no_config_mobile_networks"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettings;->setHasOptionsMenu(Z)V

    :cond_0
    new-instance v0, Lcom/android/settings/multisim/MultiSimTabHandler;

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/multisim/MultiSimTabHandler;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->tabHandler:Lcom/android/settings/multisim/MultiSimTabHandler;

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->tabHandler:Lcom/android/settings/multisim/MultiSimTabHandler;

    invoke-virtual {v0}, Lcom/android/settings/multisim/MultiSimTabHandler;->checkMultiSim()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ApnSettings"

    const-string v1, "MultiSim Tab is not created"

    invoke-static {v0, v1}, Lcom/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->tabHandler:Lcom/android/settings/multisim/MultiSimTabHandler;

    invoke-virtual {v0}, Lcom/android/settings/multisim/MultiSimTabHandler;->getSimSlot()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/telephony/MultiSimManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mccmnc:Ljava/lang/String;

    const-string v0, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mccmnc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVZWSimInserted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->initVZWApnPreference()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->tabHandler:Lcom/android/settings/multisim/MultiSimTabHandler;

    invoke-virtual {v0, p0}, Lcom/android/settings/multisim/MultiSimTabHandler;->setTabInteface(Lcom/android/settings/multisim/MultiSimTabInterface;)V

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoring:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoring:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a06a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoring:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoring:Landroid/app/ProgressDialog;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7

    const v6, 0x7f0a0e62

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "3"

    const-string v2, "ril.simtype"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/ApnSettings;->mUnavailable:Z

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a06aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v5, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void

    :cond_3
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->allowAddOrRestore(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "kddi_cpa_added"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_2

    move v0, v1

    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isJapanKDIModel()Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->goAddApn()V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/settings/ApnSettings;->tabHandler:Lcom/android/settings/multisim/MultiSimTabHandler;

    invoke-virtual {v2}, Lcom/android/settings/multisim/MultiSimTabHandler;->getSimSlot()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/ApnSettings;->dualSimMPS_DataLock(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->addNewApn()V

    goto :goto_0

    :sswitch_1
    iget-object v2, p0, Lcom/android/settings/ApnSettings;->tabHandler:Lcom/android/settings/multisim/MultiSimTabHandler;

    invoke-virtual {v2}, Lcom/android/settings/multisim/MultiSimTabHandler;->getSimSlot()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/ApnSettings;->dualSimMPS_DataLock(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->showWarning()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->finish()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x102002c -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-boolean v0, p0, Lcom/android/settings/ApnSettings;->mUnavailable:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mDelayRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mDelayHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mDelayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mDelayRunnable:Ljava/lang/Runnable;

    :cond_2
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoring:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoring:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoring:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange(): Preference - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isJapanKDIModel()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/ApnSettings;->mccmnc:Ljava/lang/String;

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/android/settings/Utils;->setCarrierEnabledStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/settings/Utils;->reqEnableCpa(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/settings/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 11

    const/4 v7, 0x1

    iget-object v6, p0, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    if-nez v6, :cond_0

    const-string v6, "apn_list"

    invoke-virtual {p0, v6}, Lcom/android/settings/ApnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceGroup;

    iput-object v6, p0, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    :cond_0
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v6, p0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/settings/ApnSettings;->tIntent:Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    iget-object v10, p0, Lcom/android/settings/ApnSettings;->mccmnc:Ljava/lang/String;

    invoke-static {v6, v8, v9, v10}, Lcom/android/settings/Utils;->isEnabledAdd(Landroid/content/Context;Landroid/content/Intent;Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    move-result v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_1
    const/4 v6, 0x2

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v6, p0, Lcom/android/settings/ApnSettings;->tIntent:Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    iget-object v9, p0, Lcom/android/settings/ApnSettings;->mccmnc:Ljava/lang/String;

    invoke-static {v6, v8, v9}, Lcom/android/settings/Utils;->isEnabledRestore(Landroid/content/Intent;Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v8, "CscFeature_Setting_LockApnDuringTethering"

    invoke-virtual {v6, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isTetheringEnabled(Landroid/content/Context;)Z

    move-result v5

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v8

    if-nez v5, :cond_3

    move v6, v7

    :goto_1
    invoke-interface {v8, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    :cond_4
    return-void
.end method

.method public onResume()V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->finish()V

    :cond_0
    iget-boolean v3, p0, Lcom/android/settings/ApnSettings;->mUnavailable:Z

    if-eqz v3, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/settings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/ApnSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/settings/ApnSettings;->mTetherStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/ApnSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "airplane_mode_on"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/ApnSettings;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->refreshUI()V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Setting_LockApnDuringTethering"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isTetheringEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    if-nez v0, :cond_3

    :goto_1
    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_2
    iget-object v1, p0, Lcom/android/settings/ApnSettings;->tabHandler:Lcom/android/settings/multisim/MultiSimTabHandler;

    invoke-virtual {v1}, Lcom/android/settings/multisim/MultiSimTabHandler;->resume()V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->refreshUI()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public refreshUI()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->tabHandler:Lcom/android/settings/multisim/MultiSimTabHandler;

    invoke-virtual {v0}, Lcom/android/settings/multisim/MultiSimTabHandler;->getSimSlot()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/telephony/MultiSimManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mccmnc:Ljava/lang/String;

    sget-boolean v0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->fillList()V

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettings;->showDialog(I)V

    goto :goto_0
.end method

.method protected showDialog(I)V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoring:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoring:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_1
    invoke-super {p0, p1, v1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(IZ)V

    goto :goto_0
.end method
