.class public Lcom/android/systemui/qs/tiles/DrivingModeTile;
.super Lcom/android/systemui/qs/QSTile;
.source "DrivingModeTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$MultiState;",
        ">;"
    }
.end annotation


# static fields
.field private static final DB_DRIVING_MODE_ON:Ljava/lang/String; = "driving_mode_on"

.field private static final DRIVINGMODE_WARNING_CHECKED:Ljava/lang/String; = "quickpanel_drivingmode_checked"

.field private static final INTENT_DRIVING_MODE:Ljava/lang/String; = "android.settings.DRIVING_MODE_CHANGED"

.field private static final INTENT_DRIVING_UPDATE:Ljava/lang/String; = "android.settings.DRIVING_UPDATE"

.field private static final TAG:Ljava/lang/String; = "DrivingModeTile"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mContentResolver:Landroid/content/ContentResolver;

.field protected mPreviousState:Lcom/android/systemui/qs/QSTile$MultiState;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSetting:Lcom/android/systemui/qs/SystemSetting;

.field private mZenMode:I

.field private final mZenObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    new-instance v0, Lcom/android/systemui/qs/tiles/DrivingModeTile$2;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/DrivingModeTile$2;-><init>(Lcom/android/systemui/qs/tiles/DrivingModeTile;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mZenObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/systemui/qs/tiles/DrivingModeTile$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/DrivingModeTile$3;-><init>(Lcom/android/systemui/qs/tiles/DrivingModeTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/qs/tiles/DrivingModeTile$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "driving_mode_on"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/DrivingModeTile$1;-><init>(Lcom/android/systemui/qs/tiles/DrivingModeTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mZenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/DrivingModeTile;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mZenMode:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/tiles/DrivingModeTile;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mZenMode:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/DrivingModeTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/DrivingModeTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/DrivingModeTile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/DrivingModeTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/DrivingModeTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/DrivingModeTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/DrivingModeTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/DrivingModeTile;)Lcom/android/systemui/qs/SystemSetting;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/DrivingModeTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/DrivingModeTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/DrivingModeTile;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private areAllDrivingModeOptionsDisabled()Z
    .locals 13

    const/4 v12, -0x2

    const/4 v9, 0x0

    const-string v10, "DrivingModeTile"

    const-string v11, "  areAllDrivingModeOptionsDisabled"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "driving_mode_incoming_call_notification"

    invoke-static {v10, v11, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    iget-object v10, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "driving_mode_chaton_call_notification"

    invoke-static {v10, v11, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iget-object v10, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "driving_mode_message_notification"

    invoke-static {v10, v11, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    iget-object v10, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "driving_mode_email_notification"

    invoke-static {v10, v11, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iget-object v10, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "driving_mode_voice_mail_notification"

    invoke-static {v10, v11, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    iget-object v10, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "driving_mode_alarm_notification"

    invoke-static {v10, v11, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iget-object v10, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "driving_mode_schedule_notification"

    invoke-static {v10, v11, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    iget-object v10, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "driving_mode_unlock_screen_contents"

    invoke-static {v10, v11, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    iget-object v10, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "driving_mode_air_call_accept"

    invoke-static {v10, v11, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v4, :cond_0

    if-nez v2, :cond_0

    if-nez v5, :cond_0

    if-nez v3, :cond_0

    if-nez v8, :cond_0

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v6, :cond_0

    if-nez v7, :cond_0

    const/4 v9, 0x1

    :cond_0
    return v9
.end method

.method private handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V
    .locals 2

    const v1, 0x7f0207b1

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v0, :cond_0

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v0, 0x7f0207b2

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :pswitch_1
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0207b0

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :pswitch_3
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private init()V
    .locals 6

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "zen_mode"

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mZenMode:I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    iget v1, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mZenMode:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mZenMode:I

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    const/4 v2, 0x4

    iput v2, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v4}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    iput v2, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method private isVoiceControlEnabled(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.vlingo.midas"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onDisplayDrivingModeAlert()V
    .locals 13

    const/16 v12, 0x7d8

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v9, 0x7f0400d9

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v9, 0x7f0e041d

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    const v9, 0x7f0e041c

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;

    const v11, 0x7f0d0432

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;

    const v11, 0x7f0d0433

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v9, Lcom/android/systemui/qs/tiles/DrivingModeTile$4;

    invoke-direct {v9, p0, v3}, Lcom/android/systemui/qs/tiles/DrivingModeTile$4;-><init>(Lcom/android/systemui/qs/tiles/DrivingModeTile;Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v9}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f0d0431

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v9, 0x104000a

    new-instance v10, Lcom/android/systemui/qs/tiles/DrivingModeTile$5;

    invoke-direct {v10, p0, v3}, Lcom/android/systemui/qs/tiles/DrivingModeTile$5;-><init>(Lcom/android/systemui/qs/tiles/DrivingModeTile;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v9}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v10, Lcom/android/systemui/qs/tiles/DrivingModeTile$6;

    invoke-direct {v10, p0}, Lcom/android/systemui/qs/tiles/DrivingModeTile$6;-><init>(Lcom/android/systemui/qs/tiles/DrivingModeTile;)V

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v9}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v6, 0x1

    :goto_0
    if-eqz v5, :cond_3

    sget-boolean v9, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v9, :cond_2

    if-eqz v6, :cond_2

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/view/Window;->setType(I)V

    :cond_0
    :goto_1
    iget-object v9, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    iget-object v9, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x7d9

    invoke-virtual {v9, v10}, Landroid/view/Window;->setType(I)V

    goto :goto_1

    :cond_3
    iget-object v9, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/view/Window;->setType(I)V

    goto :goto_1
.end method

.method private setEnabled(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showConfirmPopup()V
    .locals 7

    const/16 v6, 0x7d8

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1040014

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d0532

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/systemui/qs/tiles/DrivingModeTile$8;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/tiles/DrivingModeTile$8;-><init>(Lcom/android/systemui/qs/tiles/DrivingModeTile;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/android/systemui/qs/tiles/DrivingModeTile$7;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/tiles/DrivingModeTile$7;-><init>(Lcom/android/systemui/qs/tiles/DrivingModeTile;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v3}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v3}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v0, :cond_3

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v3, :cond_2

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/Window;->setType(I)V

    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/Window;->setType(I)V

    goto :goto_1
.end method


# virtual methods
.method public handleClick()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x0

    const-string v3, "DrivingModeTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleClick : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-eq v2, v6, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    :cond_0
    const-string v2, "DrivingModeTile"

    const-string v3, "mState.value == MultiState.DIM/ EXTRA1: return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v2, p0}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSButtonOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;

    const-string v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "DrivingModeTile"

    const-string v3, "onClick(): Car mode state change is not allowed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v2}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->areAllDrivingModeOptionsDisabled()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->showConfirmPopup()V

    goto :goto_0

    :cond_4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->refreshState(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "quickpanel_drivingmode_checked"

    const/4 v4, -0x2

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->setEnabled(Z)V

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->isVoiceControlEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->onDisplayDrivingModeAlert()V

    goto :goto_0

    :cond_5
    invoke-direct {p0, v5}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0
.end method

.method protected handleDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    return-void
.end method

.method public handleLongClick()V
    .locals 8

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v4, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v4, v4, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v4, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v4, v4, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    :cond_0
    const-string v4, "DrivingModeTile"

    const-string v5, "mState.value == MultiState.DIM || EXTRA1: return"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const-string v4, "DrivingModeTile"

    const-string v5, "  handleLongClick"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "com.android.settings"

    const-string v0, "com.android.settings.Settings$DrivingModeSettingsActivity"

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    if-eqz v2, :cond_2

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v4, 0x10008000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    new-instance v6, Landroid/os/UserHandle;

    const/4 v7, -0x2

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v4}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "DrivingModeTile"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public handleSecondaryClick()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->handleLongClick()V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 6

    const v5, 0x7f0d0388

    const v4, 0x7f0d0434

    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    const-string v1, "DrivingModeTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleUpdateState state :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DrivingModeTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleUpdateState value :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d03c2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->alpha:F

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V

    packed-switch v0, :pswitch_data_0

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    :pswitch_0
    const v1, 0x7f0d0387

    invoke-virtual {p0, v4, v1}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    const v1, 0x3ecccccd    # 0.4f

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->alpha:F

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0

    return-void
.end method

.method public userSwitch(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->userSwitched(I)V

    return-void
.end method
