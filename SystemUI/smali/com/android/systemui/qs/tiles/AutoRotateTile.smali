.class public Lcom/android/systemui/qs/tiles/AutoRotateTile;
.super Lcom/android/systemui/qs/QSTile;
.source "AutoRotateTile.java"


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
.field private static final ACCELEROMETER_CURRENT_MODE:Ljava/lang/String; = "accelerometer_current_mode"

.field private static final ACCELEROMETER_MODE_ALL:I = 0x0

.field private static final ACCELEROMETER_MODE_GALLERY_VIDEOD:I = 0x1

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-AutoRotateTile"

.field private static mDiagnosticLogs:Z


# instance fields
.field private mAutoRotation:Z

.field private mCurrentRotateMode:I

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

.field private mIconOffDim:Lcom/android/systemui/qs/QSTile$Icon;

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

.field private mIconOnDim:Lcom/android/systemui/qs/QSTile$Icon;

.field private mIsDualLCD:Z

.field private mKeyboardHidden:I

.field private mListening:Z

.field private mMobileKeyboardCovered:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRotateOnOff:Z

.field private final mRotationSecondSetting:Lcom/android/systemui/qs/SystemSetting;

.field private final mRotationSetting:Lcom/android/systemui/qs/SystemSetting;

.field private mSupportFolderType:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mDiagnosticLogs:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mSupportFolderType:Z

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mIsDualLCD:Z

    new-instance v1, Lcom/android/systemui/qs/tiles/AutoRotateTile$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/AutoRotateTile$1;-><init>(Lcom/android/systemui/qs/tiles/AutoRotateTile;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mQsAnimationIcon:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v4, 0x7f02039e

    sget-object v5, Lcom/android/systemui/qs/QSTile$AnimType;->ALWAYS_ON:Lcom/android/systemui/qs/QSTile$AnimType;

    invoke-direct {v1, p0, v4, v5}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;ILcom/android/systemui/qs/QSTile$AnimType;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mIconOn:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    new-instance v1, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v4, 0x7f02039c

    sget-object v5, Lcom/android/systemui/qs/QSTile$AnimType;->ALWAYS_ON:Lcom/android/systemui/qs/QSTile$AnimType;

    invoke-direct {v1, p0, v4, v5}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;ILcom/android/systemui/qs/QSTile$AnimType;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mIconOff:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f02039f

    invoke-static {v1}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mIconOnDim:Lcom/android/systemui/qs/QSTile$Icon;

    const v1, 0x7f02039d

    invoke-static {v1}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mIconOffDim:Lcom/android/systemui/qs/QSTile$Icon;

    :cond_0
    new-instance v1, Lcom/android/systemui/qs/tiles/AutoRotateTile$2;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v6, "accelerometer_rotation"

    invoke-direct {v1, p0, v4, v5, v6}, Lcom/android/systemui/qs/tiles/AutoRotateTile$2;-><init>(Lcom/android/systemui/qs/tiles/AutoRotateTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mRotationSetting:Lcom/android/systemui/qs/SystemSetting;

    new-instance v1, Lcom/android/systemui/qs/tiles/AutoRotateTile$3;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v6, "accelerometer_rotation_second"

    invoke-direct {v1, p0, v4, v5, v6}, Lcom/android/systemui/qs/tiles/AutoRotateTile$3;-><init>(Lcom/android/systemui/qs/tiles/AutoRotateTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mRotationSecondSetting:Lcom/android/systemui/qs/SystemSetting;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v4, "com.sec.feature.folder_type"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mSupportFolderType:Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v4, "com.sec.feature.dual_lcd"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mIsDualLCD:Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mRotationSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mRotationSecondSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v4, v0, v7, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->getAutoRotation()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-boolean v4, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    if-eqz v4, :cond_1

    :goto_0
    iput v2, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    :goto_1
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mDiagnosticLogs:Z

    return-void

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->getCurrentMode()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mCurrentRotateMode:I

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mRotateOnOff:Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mQsAnimationIcon:Z

    if-eqz v4, :cond_4

    :cond_3
    :goto_2
    iput v2, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_1

    :cond_4
    iget-boolean v4, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mRotateOnOff:Z

    if-nez v4, :cond_3

    move v2, v3

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/AutoRotateTile;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->isMobileKeyboardCovered()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/AutoRotateTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/AutoRotateTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/qs/tiles/AutoRotateTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/AutoRotateTile;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->getAutoRotation()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/AutoRotateTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/AutoRotateTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mSupportFolderType:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/AutoRotateTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/AutoRotateTile;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->isFolderOpen()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/AutoRotateTile;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->handleRotationValueChanged(I)V

    return-void
.end method

.method private getAutoRotation()Z
    .locals 4

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mSupportFolderType:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mIsDualLCD:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->isFolderOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->getAutoRotationSecond()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "accelerometer_rotation"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getAutoRotationSecond()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "accelerometer_rotation_second"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private getCurrentMode()I
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_current_mode"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    return v1
.end method

.method private getQsAnimationIcon(Z)Lcom/android/systemui/qs/QSTile$AnimationIcon;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/android/systemui/qs/QSTile",
            "<",
            "Lcom/android/systemui/qs/QSTile$MultiState;",
            ">.AnimationIcon;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mIconOn:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mIconOff:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    goto :goto_0
.end method

.method private handleRotationValueChanged(I)V
    .locals 3

    const/4 v1, 0x2

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->getAutoRotation()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    if-eqz v2, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->refreshState(Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->isMobileKeyboardCovered()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->refreshState(Ljava/lang/Object;)V

    :goto_2
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mRotateOnOff:Z

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->getAutoRotation()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mQsAnimationIcon:Z

    if-eqz v2, :cond_4

    :cond_3
    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_3
.end method

.method private handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V
    .locals 2

    const v1, 0x7f0207ec

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mQsAnimationIcon:Z

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mIconOnDim:Lcom/android/systemui/qs/QSTile$Icon;

    :goto_0
    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mIconOffDim:Lcom/android/systemui/qs/QSTile$Icon;

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->getQsAnimationIcon(Z)Lcom/android/systemui/qs/QSTile$AnimationIcon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    goto :goto_1

    :cond_2
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    :cond_3
    iget v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const v0, 0x7f0207ed

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    :pswitch_1
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isFolderOpen()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v2, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v2, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mKeyboardHidden:I

    iget v2, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mKeyboardHidden:I

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isMobileKeyboardCovered()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v2, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    iput v2, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mMobileKeyboardCovered:I

    iget v2, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mMobileKeyboardCovered:I

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private sendLogs()V
    .locals 5

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "app_id"

    const-string v4, "com.android.systemui.statusbar.policy.quicksetting"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "feature"

    const-string v4, "QS05"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const-string v3, "extra"

    const-string v4, "ALL"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "data"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v3, "com.samsung.android.providers.context"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setAutoRotation(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    new-instance v0, Lcom/android/systemui/qs/tiles/AutoRotateTile$4;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tiles/AutoRotateTile$4;-><init>(Lcom/android/systemui/qs/tiles/AutoRotateTile;Z)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setCurrentMode(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_current_mode"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iput p1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mCurrentRotateMode:I

    return-void
.end method


# virtual methods
.method protected handleClick()V
    .locals 11

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v9, "STATUSBAR-AutoRotateTile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleClick : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v6, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v6, v6, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v2, v7, [Ljava/lang/String;

    const-string v6, "false"

    aput-object v6, v2, v8

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    const-string v9, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v10, "isSettingsChangesAllowed"

    invoke-static {v6, v9, v10, v2}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v6, -0x1

    if-eq v0, v6, :cond_1

    if-nez v0, :cond_1

    const-string v6, "STATUSBAR-AutoRotateTile"

    const-string v7, "onClick(): Rotation state change is not allowed"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v6, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mMobileKeyboardCovered:I

    if-ne v6, v7, :cond_3

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mQsAnimationIcon:Z

    if-eqz v6, :cond_2

    const v6, 0x7f0d03ba

    :goto_1
    invoke-virtual {v9, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0d0579

    new-array v10, v7, [Ljava/lang/Object;

    aput-object v4, v10, v8

    invoke-virtual {v6, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    invoke-static {v6, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->setShowForAllUsers()V

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    const v6, 0x7f0d0394

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v6, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v6, v6, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v9, 0x3

    if-eq v6, v9, :cond_0

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v6, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v6, v6, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v9, 0x2

    if-ne v6, v9, :cond_5

    move v3, v7

    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->getAutoRotation()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mQsAnimationIcon:Z

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    if-nez v6, :cond_6

    move v6, v7

    :goto_3
    invoke-direct {p0, v6}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->getQsAnimationIcon(Z)Lcom/android/systemui/qs/QSTile$AnimationIcon;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->setAllowAnimation(Z)V

    :cond_4
    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v6, :cond_7

    iget-boolean v6, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    if-eq v3, v6, :cond_0

    invoke-direct {p0, v3}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->setAutoRotation(Z)V

    goto :goto_0

    :cond_5
    move v3, v8

    goto :goto_2

    :cond_6
    move v6, v8

    goto :goto_3

    :cond_7
    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mQsAnimationIcon:Z

    if-eqz v6, :cond_9

    iget-boolean v6, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    if-nez v6, :cond_a

    :cond_8
    iget v6, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mCurrentRotateMode:I

    if-nez v6, :cond_b

    invoke-direct {p0, v7}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->setAutoRotation(Z)V

    const-string v6, "STATUSBAR-AutoRotateTile"

    const-string v8, "setAutoRotation set to true"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    iput-boolean v7, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mRotateOnOff:Z

    goto/16 :goto_0

    :cond_9
    if-nez v3, :cond_8

    :cond_a
    invoke-direct {p0, v8}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->setAutoRotation(Z)V

    iput-boolean v8, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mRotateOnOff:Z

    const-string v6, "STATUSBAR-AutoRotateTile"

    const-string v7, "setGalleryVideoRotation set to false"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    const-string v6, "STATUSBAR-AutoRotateTile"

    const-string v8, "setGalleryVideoRotation set to true"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method protected handleDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mRotationSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mRotationSecondSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    return-void
.end method

.method public handleLongClick()V
    .locals 7

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->TAG:Ljava/lang/String;

    const-string v4, "handleLongClick "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v2, v6, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "true"

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    const-string v4, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v5, "isSettingsChangesAllowed"

    invoke-static {v3, v4, v5, v2}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-nez v0, :cond_1

    const-string v3, "STATUSBAR-AutoRotateTile"

    const-string v4, "handleLongClick: Setting access is not allowed"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v3, :cond_4

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->CHAGALL:Z

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->KLIMT:Z

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->RUBENS:Z

    if-eqz v3, :cond_3

    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$SmartScreenSettingsActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "fromAccelerometer"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v3, 0x10008000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->startSettingsActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$DisplaySettingsActivity"

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mSupportLongpressAutoRotate:Z

    if-eqz v3, :cond_0

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$DisplaySettingsActivity"

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 4

    const v3, 0x7f0d0394

    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mQsAnimationIcon:Z

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    if-eqz v1, :cond_1

    const v1, 0x7f0d03b9

    :goto_1
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    :goto_2
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V

    packed-switch v0, :pswitch_data_0

    :goto_3
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    :cond_1
    const v1, 0x7f0d03b8

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d03b7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    goto :goto_2

    :pswitch_0
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mQsAnimationIcon:Z

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    if-eqz v1, :cond_3

    const v1, 0x7f0d0395

    :goto_4
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_3

    :cond_3
    const v1, 0x7f0d0396

    goto :goto_4

    :cond_4
    const v1, 0x7f0d0387

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_3

    :pswitch_1
    const v1, 0x7f0d0388

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

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

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0

    return-void
.end method

.method public userSwitch(I)V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mRotationSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/SystemSetting;->userSwitched(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mRotationSecondSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/SystemSetting;->userSwitched(I)V

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->refreshState(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->getAutoRotation()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mQsAnimationIcon:Z

    if-eqz v1, :cond_2

    :cond_1
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    if-nez v1, :cond_1

    const/4 v0, 0x2

    goto :goto_1
.end method
