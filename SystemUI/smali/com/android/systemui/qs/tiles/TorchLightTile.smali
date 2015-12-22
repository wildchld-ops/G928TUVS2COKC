.class public Lcom/android/systemui/qs/tiles/TorchLightTile;
.super Lcom/android/systemui/qs/QSTile;
.source "TorchLightTile.java"


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
.field private static final ACTION_TORCH_OFF:Ljava/lang/String; = "com.sec.android.systemui.action.TORCH_OFF"

.field private static final CRITICAL_LOW_BATTERY_THRESHOLD:I = 0x5

.field private static final FLASH_LIGHT_DEFAULT_BRIGHTNESS_LEVEL:Ljava/lang/String; = "SEC_FLOATING_FEATURE_COMMON_FLASH_LIGHT_DEFAULT_BRIGHTNESS_LEVEL"

.field private static final FLASH_LIGHT_SELECT_BRIGHTNESS_LEVEL:Ljava/lang/String; = "Quickpanel_torch_brightness_level"

.field private static final PERMISSION_TORCH:Ljava/lang/String; = "com.sec.android.systemui.permission.TORCH_MODE"

.field private static final TORCH_ON_NOTIFICATION:I = 0x1234

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-TorchLightTile"

.field private static toastAlert:Landroid/widget/Toast;


# instance fields
.field private cfmsService:Landroid/os/CustomFrequencyManager;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisblebyBattery:Z

.field private mIconOff:Lcom/android/systemui/qs/QSTile$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<",
            "Lcom/android/systemui/qs/QSTile$MultiState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private mIconOn:Lcom/android/systemui/qs/QSTile$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<",
            "Lcom/android/systemui/qs/QSTile$MultiState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private mNotiManager:Landroid/app/NotificationManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSetting:Lcom/android/systemui/qs/SystemSetting;

.field private mTorchEnabled:Z

.field private mTorchLevel:I

.field private final mTorchObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    iput-boolean v4, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mDisblebyBattery:Z

    new-instance v2, Lcom/android/systemui/qs/tiles/TorchLightTile$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/TorchLightTile$1;-><init>(Lcom/android/systemui/qs/tiles/TorchLightTile;)V

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/systemui/qs/tiles/TorchLightTile$3;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    invoke-direct {v2, p0, v5}, Lcom/android/systemui/qs/tiles/TorchLightTile$3;-><init>(Lcom/android/systemui/qs/tiles/TorchLightTile;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mTorchObserver:Landroid/database/ContentObserver;

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mQsAnimationIcon:Z

    if-eqz v2, :cond_0

    new-instance v2, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v5, 0x7f0203a3

    invoke-direct {v2, p0, v5}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mIconOn:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    new-instance v2, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v5, 0x7f0203a2

    invoke-direct {v2, p0, v5}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mIconOff:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    :cond_0
    new-instance v2, Lcom/android/systemui/qs/tiles/TorchLightTile$2;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v7, "torch_light"

    invoke-direct {v2, p0, v5, v6, v7}, Lcom/android/systemui/qs/tiles/TorchLightTile$2;-><init>(Lcom/android/systemui/qs/tiles/TorchLightTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v2}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mTorchEnabled:Z

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "Quickpanel_torch_brightness_level"

    const/4 v6, -0x2

    invoke-static {v2, v5, v4, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mTorchLevel:I

    iget v2, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mTorchLevel:I

    if-nez v2, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v5, "SEC_FLOATING_FEATURE_COMMON_FLASH_LIGHT_DEFAULT_BRIGHTNESS_LEVEL"

    invoke-virtual {v2, v5}, Lcom/samsung/android/feature/FloatingFeature;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mTorchLevel:I

    iget v2, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mTorchLevel:I

    if-nez v2, :cond_1

    const/4 v2, 0x5

    iput v2, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mTorchLevel:I

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mNotiManager:Landroid/app/NotificationManager;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "torch level : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mTorchLevel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mTorchEnabled:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v2, v4}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->TAG:Ljava/lang/String;

    const-string v5, "Force set to false !!!"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mTorchEnabled:Z

    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v5, v0, v8, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.sec.android.systemui.action.TORCH_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string v6, "com.sec.android.systemui.permission.TORCH_MODE"

    invoke-virtual {v2, v5, v1, v6, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mContext:Landroid/content/Context;

    const-string v5, "CustomFrequencyManagerService"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/CustomFrequencyManager;

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->cfmsService:Landroid/os/CustomFrequencyManager;

    invoke-direct {p0, v4}, Lcom/android/systemui/qs/tiles/TorchLightTile;->updateTorchState(Z)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-boolean v4, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mTorchEnabled:Z

    if-eqz v4, :cond_4

    :goto_1
    iput v3, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    return-void

    :cond_3
    move v2, v4

    goto/16 :goto_0

    :cond_4
    const/4 v3, 0x2

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/TorchLightTile;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/TorchLightTile;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/TorchLightTile;->updateTorchState(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/TorchLightTile;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/TorchLightTile;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/TorchLightTile;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/tiles/TorchLightTile;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/TorchLightTile;->cancelNotification()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/qs/tiles/TorchLightTile;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/qs/tiles/TorchLightTile;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/TorchLightTile;->updateState()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/qs/tiles/TorchLightTile;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/qs/tiles/TorchLightTile;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/qs/tiles/TorchLightTile;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/qs/tiles/TorchLightTile;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/TorchLightTile;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/systemui/qs/tiles/TorchLightTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mDisblebyBattery:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/TorchLightTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mTorchEnabled:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/qs/tiles/TorchLightTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mTorchEnabled:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/TorchLightTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/TorchLightTile;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()Landroid/widget/Toast;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/tiles/TorchLightTile;->toastAlert:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$702(Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    sput-object p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->toastAlert:Landroid/widget/Toast;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/TorchLightTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/TorchLightTile;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/TorchLightTile;->enqueueNotification()V

    return-void
.end method

.method private cancelNotification()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mNotiManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    const/16 v2, 0x1234

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method private enqueueNotification()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.sec.android.systemui.action.TORCH_OFF"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mContext:Landroid/content/Context;

    const/high16 v5, 0x8000000

    invoke-static {v4, v8, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0559

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f02046b

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d055a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v8, v5, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mNotiManager:Landroid/app/NotificationManager;

    const/4 v5, 0x0

    const/16 v6, 0x1234

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v7

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method private handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mQsAnimationIcon:Z

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mIconOn:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    :goto_0
    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mIconOff:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    goto :goto_0

    :cond_1
    iget v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const v0, 0x7f020799

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    :pswitch_1
    const v0, 0x7f020798

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateState()V
    .locals 2

    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mTorchEnabled:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/TorchLightTile;->refreshState(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private updateTorchState(Z)V
    .locals 5

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mDisblebyBattery:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/qs/tiles/TorchLightTile;->toastAlert:Landroid/widget/Toast;

    sget-object v1, Lcom/android/systemui/qs/tiles/TorchLightTile;->toastAlert:Landroid/widget/Toast;

    const v2, 0x7f0d055b

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(I)V

    sget-object v1, Lcom/android/systemui/qs/tiles/TorchLightTile;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->TAG:Ljava/lang/String;

    const-string v2, "updateTorchState ::  battery level is too low!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->cfmsService:Landroid/os/CustomFrequencyManager;

    if-nez v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->TAG:Ljava/lang/String;

    const-string v2, "updateTorchState ::  cfmsService is null !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {v2, v1}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    if-eqz p1, :cond_4

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "torch level : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mTorchLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mTorchLevel:I

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->cfmsService:Landroid/os/CustomFrequencyManager;

    const-string v2, "CLOCK_SET_TORCH_LIGHT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mTorchLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/CustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_5

    const-string v1, "android.intent.action.ACTION_ASSISTIVE_ON_WIDGETUPDATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->TAG:Ljava/lang/String;

    const-string v2, "intent : ASSISTIVELIGHT_ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->cfmsService:Landroid/os/CustomFrequencyManager;

    const-string v2, "CLOCK_SET_TORCH_LIGHT"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/os/CustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->cfmsService:Landroid/os/CustomFrequencyManager;

    const-string v2, "CLOCK_SET_TORCH_LIGHT"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Landroid/os/CustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_5
    const-string v1, "android.intent.action.ACTION_ASSISTIVE_OFF_WIDGETUPDATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->TAG:Ljava/lang/String;

    const-string v2, "intent : ASSISTIVELIGHT_OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method protected handleClick()V
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleClick : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "false"

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mContext:Landroid/content/Context;

    const-string v5, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v6, "isSettingsChangesAllowed"

    invoke-static {v2, v5, v6, v1}, Lcom/android/systemui/qs/tiles/TorchLightTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-nez v0, :cond_1

    const-string v2, "STATUSBAR-TorchLightTile"

    const-string v3, "handleClick(): state change is not allowed by EDM"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v5, 0x3

    if-eq v2, v5, :cond_0

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mQsAnimationIcon:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mIconOn:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->setAllowAnimation(Z)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mIconOff:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->setAllowAnimation(Z)V

    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mTorchEnabled:Z

    if-nez v2, :cond_3

    move v2, v3

    :goto_1
    invoke-direct {p0, v2}, Lcom/android/systemui/qs/tiles/TorchLightTile;->updateTorchState(Z)V

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1
.end method

.method protected handleDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    return-void
.end method

.method public handleLongClick()V
    .locals 0

    return-void
.end method

.method public handleSecondaryClick()V
    .locals 0

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 6

    const/4 v5, 0x1

    const v4, 0x7f0d0331

    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleUpdateState() value= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    iput-boolean v5, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    iput-boolean v5, p1, Lcom/android/systemui/qs/QSTile$MultiState;->textTruncate:Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/TorchLightTile;->handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V

    packed-switch v0, :pswitch_data_0

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    :pswitch_0
    const v1, 0x7f0d0387

    invoke-virtual {p0, v4, v1}, Lcom/android/systemui/qs/tiles/TorchLightTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    const v1, 0x7f0d0388

    invoke-virtual {p0, v4, v1}, Lcom/android/systemui/qs/tiles/TorchLightTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/TorchLightTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

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

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/TorchLightTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/TorchLightTile;->updateState()V

    :cond_0
    return-void
.end method

.method public setListeningLocal(Z)V
    .locals 0

    return-void
.end method

.method public userSwitch(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->userSwitched(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->TAG:Ljava/lang/String;

    const-string v1, "Force set to false !!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    invoke-direct {p0, v2}, Lcom/android/systemui/qs/tiles/TorchLightTile;->updateTorchState(Z)V

    return-void
.end method
