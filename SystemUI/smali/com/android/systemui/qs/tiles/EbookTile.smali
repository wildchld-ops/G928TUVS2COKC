.class public Lcom/android/systemui/qs/tiles/EbookTile;
.super Lcom/android/systemui/qs/QSTile;
.source "EbookTile.java"


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
.field private static final EREADING_DISPLAY_MODE:Ljava/lang/String; = "e_reading_display_mode"

.field private static final READINGMODE_WARNING_CHECKED:Ljava/lang/String; = "quickpanel_readingmode_checked"

.field private static final SCREEN_MODE_AUTO:I = 0x3

.field private static final SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String; = "screen_mode_automatic_setting"

.field private static final SCREEN_MODE_READING_MODE:I = 0x4

.field private static final SCREEN_MODE_READING_MODE_FOR_AMOLED:I = 0x5

.field private static final SCREEN_MODE_SETTING:Ljava/lang/String; = "screen_mode_setting"

.field private static final TAG:Ljava/lang/String; = "EbookTile"


# instance fields
.field private isRegistered:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mConfirmDialog:Landroid/app/AlertDialog;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSetting:Lcom/android/systemui/qs/SystemSetting;

.field private prevScreenMode:I

.field private settingDB:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->isRegistered:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->prevScreenMode:I

    new-instance v0, Lcom/android/systemui/qs/tiles/EbookTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/EbookTile$2;-><init>(Lcom/android/systemui/qs/tiles/EbookTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v0, :cond_0

    const-string v0, "e_reading_display_mode"

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->settingDB:Ljava/lang/String;

    :goto_0
    new-instance v0, Lcom/android/systemui/qs/tiles/EbookTile$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/EbookTile;->settingDB:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/EbookTile$1;-><init>(Lcom/android/systemui/qs/tiles/EbookTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/EbookTile;->init()V

    return-void

    :cond_0
    const-string v0, "screen_mode_setting"

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->settingDB:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/EbookTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/EbookTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/EbookTile;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/EbookTile;->isEbookMode(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/EbookTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/EbookTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/EbookTile;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/EbookTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/EbookTile;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/EbookTile;->setEnabled(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/EbookTile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/EbookTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/EbookTile;)Lcom/android/systemui/qs/SystemSetting;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/EbookTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/EbookTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method private handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V
    .locals 2

    const v1, 0x7f0207e8

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
    const v0, 0x7f0207e9

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :pswitch_1
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0207e7

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private init()V
    .locals 5

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v4}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    iput v2, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    :goto_1
    return-void

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v4}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/systemui/qs/tiles/EbookTile;->isEbookMode(I)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    iput v2, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/EbookTile;->isEbookMode(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/EbookTile;->isPremiumAMOLED()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    :goto_3
    iput v1, p0, Lcom/android/systemui/qs/tiles/EbookTile;->prevScreenMode:I

    :cond_2
    const-string v1, "EbookTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() ebook "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v3}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", prevScreenMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/qs/tiles/EbookTile;->prevScreenMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2

    :cond_4
    const/4 v1, 0x3

    goto :goto_3
.end method

.method private isEbookMode(I)Z
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/EbookTile;->isPremiumAMOLED()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    const-string v1, "EbookTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEbookMode()? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isPremiumAMOLED()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isVoiceCapable(Landroid/content/Context;)Z
    .locals 2

    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isWifiOnly(Landroid/content/Context;)Z
    .locals 3

    const/4 v1, 0x0

    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private onDisplayReadingModeAlert()V
    .locals 10

    const/16 v9, 0x7d8

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mContext:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v7, 0x7f0400de

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v7, 0x7f0e042a

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0d042c

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v7, 0x104000a

    new-instance v8, Lcom/android/systemui/qs/tiles/EbookTile$3;

    invoke-direct {v8, p0, v6}, Lcom/android/systemui/qs/tiles/EbookTile$3;-><init>(Lcom/android/systemui/qs/tiles/EbookTile;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v7, 0x7f0d042e

    new-instance v8, Lcom/android/systemui/qs/tiles/EbookTile$4;

    invoke-direct {v8, p0}, Lcom/android/systemui/qs/tiles/EbookTile$4;-><init>(Lcom/android/systemui/qs/tiles/EbookTile;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v7}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v8, Lcom/android/systemui/qs/tiles/EbookTile$5;

    invoke-direct {v8, p0}, Lcom/android/systemui/qs/tiles/EbookTile$5;-><init>(Lcom/android/systemui/qs/tiles/EbookTile;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v7}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v2, 0x1

    :goto_0
    if-eqz v1, :cond_3

    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v7, :cond_2

    if-eqz v2, :cond_2

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/Window;->setType(I)V

    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x7d9

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/Window;->setType(I)V

    goto :goto_1
.end method

.method private setAdaptiveDisplay(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "screen_mode_automatic_setting"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setEnabled(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.READINGMODE_SWITCH_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public handleClick()V
    .locals 12

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v10, "EbookTile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleClick : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v5, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v5, v5, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v5, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v5, v5, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v5, v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v5, p0}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSButtonOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mContext:Landroid/content/Context;

    const-string v10, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v11, "isSettingsChangesAllowed"

    invoke-static {v5, v10, v11}, Lcom/android/systemui/qs/tiles/EbookTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_2

    if-nez v0, :cond_2

    const-string v5, "EbookTile"

    const-string v6, "onClick(): Ebook state change is not allowed"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v5, :cond_5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/tiles/EbookTile;->refreshState(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "quickpanel_readingmode_checked"

    const/4 v7, -0x2

    invoke-static {v5, v6, v9, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v5, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v5, v5, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/EbookTile;->onDisplayReadingModeAlert()V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v8}, Lcom/android/systemui/qs/tiles/EbookTile;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v9}, Lcom/android/systemui/qs/tiles/EbookTile;->setEnabled(Z)V

    goto :goto_0

    :cond_5
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v5, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v5, v5, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-eq v5, v8, :cond_7

    move v4, v8

    :goto_1
    if-eqz v4, :cond_6

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v5}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v5

    iput v5, p0, Lcom/android/systemui/qs/tiles/EbookTile;->prevScreenMode:I

    const-string v5, "EbookTile"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "click prevScreenMode "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/systemui/qs/tiles/EbookTile;->prevScreenMode:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v3, -0x1

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mContext:Landroid/content/Context;

    const-string v10, "mDNIe"

    invoke-virtual {v5, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mdnie/MdnieManager;

    if-eqz v2, :cond_e

    if-eqz v4, :cond_9

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/EbookTile;->isPremiumAMOLED()Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v3, 0x5

    :goto_2
    invoke-direct {p0, v9}, Lcom/android/systemui/qs/tiles/EbookTile;->setAdaptiveDisplay(Z)V

    :goto_3
    invoke-virtual {v2, v3}, Lcom/samsung/android/mdnie/MdnieManager;->setScreenMode(I)Z

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v5, v3}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    const-string v5, "EbookTile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mdnie.setScreenMode() value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    move v4, v9

    goto :goto_1

    :cond_8
    const/4 v3, 0x4

    goto :goto_2

    :cond_9
    iget v3, p0, Lcom/android/systemui/qs/tiles/EbookTile;->prevScreenMode:I

    iget v5, p0, Lcom/android/systemui/qs/tiles/EbookTile;->prevScreenMode:I

    if-gez v5, :cond_a

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/EbookTile;->isPremiumAMOLED()Z

    move-result v5

    if-eqz v5, :cond_b

    move v3, v6

    :goto_4
    iput v3, p0, Lcom/android/systemui/qs/tiles/EbookTile;->prevScreenMode:I

    const-string v5, "EbookTile"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Wrong prevScreenMode : set as AD "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/systemui/qs/tiles/EbookTile;->prevScreenMode:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/EbookTile;->isPremiumAMOLED()Z

    move-result v5

    if-eqz v5, :cond_c

    :goto_5
    if-ne v3, v6, :cond_d

    invoke-direct {p0, v8}, Lcom/android/systemui/qs/tiles/EbookTile;->setAdaptiveDisplay(Z)V

    goto :goto_3

    :cond_b
    move v3, v7

    goto :goto_4

    :cond_c
    move v6, v7

    goto :goto_5

    :cond_d
    invoke-direct {p0, v9}, Lcom/android/systemui/qs/tiles/EbookTile;->setAdaptiveDisplay(Z)V

    goto :goto_3

    :cond_e
    const-string v5, "EbookTile"

    const-string v6, "mDNIe = null"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected handleDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    return-void
.end method

.method public handleLongClick()V
    .locals 3

    const-string v1, "EbookTile"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleLongClick : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v0, :cond_0

    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$ReadingModeSettingsActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/tiles/EbookTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    if-eqz v0, :cond_1

    const-string v0, "com.samsung.settings.ModePreviewTablet"

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/EbookTile;->startSettingsActivity(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "com.samsung.settings.NewModePreview"

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/EbookTile;->startSettingsActivity(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/EbookTile;->handleLongClick()V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 4

    const v3, 0x7f0d0430

    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d042f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/EbookTile;->handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V

    packed-switch v0, :pswitch_data_0

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    :pswitch_0
    const v1, 0x7f0d0387

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/EbookTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    const v1, 0x7f0d0388

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/EbookTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/EbookTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

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

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/EbookTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0

    return-void
.end method

.method public userSwitch(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->userSwitched(I)V

    return-void
.end method
