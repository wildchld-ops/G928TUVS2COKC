.class public Lcom/samsung/android/dualscreen/DualScreenSettings;
.super Ljava/lang/Object;
.source "DualScreenSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/dualscreen/DualScreenSettings$OnSettingChangedListener;,
        Lcom/samsung/android/dualscreen/DualScreenSettings$SettingsObserver;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field public static final TAG:Ljava/lang/String; = "DualScreenSettings"

.field private static mDesktopModeEnabled:I

.field private static mDualScreenDisplayChooserEnabled:I

.field private static mDualScreenModeEnabled:I

.field private static mDualScreenOppositeLaunchEnabled:I

.field private static mDualScreenSubHomeComponentName:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDualScreenDemoMode:I

.field private mHandler:Landroid/os/Handler;

.field private mOnSettingChangedListener:Lcom/samsung/android/dualscreen/DualScreenSettings$OnSettingChangedListener;

.field private mSettingsObserver:Lcom/samsung/android/dualscreen/DualScreenSettings$SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/samsung/android/dualscreen/DualScreenSettings;->mDualScreenSubHomeComponentName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/dualscreen/DualScreenSettings;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/dualscreen/DualScreenSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/dualscreen/DualScreenSettings;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/dualscreen/DualScreenSettings;->mHandler:Landroid/os/Handler;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/dualscreen/DualScreenSettings;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/dualscreen/DualScreenSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/dualscreen/DualScreenSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/dualscreen/DualScreenSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/dualscreen/DualScreenSettings;->updateSettings()V

    return-void
.end method

.method public static dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDualScreenModeEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Lcom/samsung/android/dualscreen/DualScreenSettings;->mDualScreenModeEnabled:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDesktopModeEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Lcom/samsung/android/dualscreen/DualScreenSettings;->mDesktopModeEnabled:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDualScreenDisplayChooserEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Lcom/samsung/android/dualscreen/DualScreenSettings;->mDualScreenDisplayChooserEnabled:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDualScreenOppositeLaunchEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Lcom/samsung/android/dualscreen/DualScreenSettings;->mDualScreenOppositeLaunchEnabled:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDualScreenSubHomeComponentName="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/dualscreen/DualScreenSettings;->mDualScreenSubHomeComponentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private updateSettings()V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, -0x2

    const-string v6, "DualScreenSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateSettings() : mOnSettingChangedListener="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/dualscreen/DualScreenSettings;->mOnSettingChangedListener:Lcom/samsung/android/dualscreen/DualScreenSettings$OnSettingChangedListener;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/dualscreen/DualScreenSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dual_screen_mode_enabled"

    invoke-static {v5, v6, v10, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    sget v6, Lcom/samsung/android/dualscreen/DualScreenSettings;->mDualScreenModeEnabled:I

    if-eq v6, v2, :cond_0

    sput v2, Lcom/samsung/android/dualscreen/DualScreenSettings;->mDualScreenModeEnabled:I

    iget-object v6, p0, Lcom/samsung/android/dualscreen/DualScreenSettings;->mOnSettingChangedListener:Lcom/samsung/android/dualscreen/DualScreenSettings$OnSettingChangedListener;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/dualscreen/DualScreenSettings;->mOnSettingChangedListener:Lcom/samsung/android/dualscreen/DualScreenSettings$OnSettingChangedListener;

    const-string v7, "dual_screen_mode_enabled"

    invoke-interface {v6, v7}, Lcom/samsung/android/dualscreen/DualScreenSettings$OnSettingChangedListener;->onChange(Ljava/lang/String;)V

    :cond_0
    const-string v6, "desktop_mode_enabled"

    invoke-static {v5, v6, v10, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    sget v6, Lcom/samsung/android/dualscreen/DualScreenSettings;->mDesktopModeEnabled:I

    if-eq v6, v0, :cond_1

    sput v0, Lcom/samsung/android/dualscreen/DualScreenSettings;->mDesktopModeEnabled:I

    iget-object v6, p0, Lcom/samsung/android/dualscreen/DualScreenSettings;->mOnSettingChangedListener:Lcom/samsung/android/dualscreen/DualScreenSettings$OnSettingChangedListener;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/dualscreen/DualScreenSettings;->mOnSettingChangedListener:Lcom/samsung/android/dualscreen/DualScreenSettings$OnSettingChangedListener;

    const-string v7, "desktop_mode_enabled"

    invoke-interface {v6, v7}, Lcom/samsung/android/dualscreen/DualScreenSettings$OnSettingChangedListener;->onChange(Ljava/lang/String;)V

    :cond_1
    const-string v6, "dual_screen_display_chooser_enabled"

    invoke-static {v5, v6, v10, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    sget v6, Lcom/samsung/android/dualscreen/DualScreenSettings;->mDualScreenDisplayChooserEnabled:I

    if-eq v6, v1, :cond_2

    sput v1, Lcom/samsung/android/dualscreen/DualScreenSettings;->mDualScreenDisplayChooserEnabled:I

    iget-object v6, p0, Lcom/samsung/android/dualscreen/DualScreenSettings;->mOnSettingChangedListener:Lcom/samsung/android/dualscreen/DualScreenSettings$OnSettingChangedListener;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/dualscreen/DualScreenSettings;->mOnSettingChangedListener:Lcom/samsung/android/dualscreen/DualScreenSettings$OnSettingChangedListener;

    const-string v7, "dual_screen_display_chooser_enabled"

    invoke-interface {v6, v7}, Lcom/samsung/android/dualscreen/DualScreenSettings$OnSettingChangedListener;->onChange(Ljava/lang/String;)V

    :cond_2
    const-string v6, "dual_screen_opposite_launch_enabled"

    invoke-static {v5, v6, v10, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    sget v6, Lcom/samsung/android/dualscreen/DualScreenSettings;->mDualScreenOppositeLaunchEnabled:I

    if-eq v6, v3, :cond_3

    sput v3, Lcom/samsung/android/dualscreen/DualScreenSettings;->mDualScreenOppositeLaunchEnabled:I

    iget-object v6, p0, Lcom/samsung/android/dualscreen/DualScreenSettings;->mOnSettingChangedListener:Lcom/samsung/android/dualscreen/DualScreenSettings$OnSettingChangedListener;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/samsung/android/dualscreen/DualScreenSettings;->mOnSettingChangedListener:Lcom/samsung/android/dualscreen/DualScreenSettings$OnSettingChangedListener;

    const-string v7, "dual_screen_opposite_launch_enabled"

    invoke-interface {v6, v7}, Lcom/samsung/android/dualscreen/DualScreenSettings$OnSettingChangedListener;->onChange(Ljava/lang/String;)V

    :cond_3
    const-string/jumbo v6, "subhome_package_info"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/samsung/android/dualscreen/DualScreenSettings;->mDualScreenSubHomeComponentName:Ljava/lang/String;

    if-eq v6, v4, :cond_4

    sput-object v4, Lcom/samsung/android/dualscreen/DualScreenSettings;->mDualScreenSubHomeComponentName:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/dualscreen/DualScreenSettings;->mOnSettingChangedListener:Lcom/samsung/android/dualscreen/DualScreenSettings$OnSettingChangedListener;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/dualscreen/DualScreenSettings;->mOnSettingChangedListener:Lcom/samsung/android/dualscreen/DualScreenSettings$OnSettingChangedListener;

    const-string/jumbo v7, "subhome_package_info"

    invoke-interface {v6, v7}, Lcom/samsung/android/dualscreen/DualScreenSettings$OnSettingChangedListener;->onChange(Ljava/lang/String;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public getDualScreenDemoMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/dualscreen/DualScreenSettings;->mDualScreenDemoMode:I

    return v0
.end method

.method public init()V
    .locals 2

    new-instance v0, Lcom/samsung/android/dualscreen/DualScreenSettings$SettingsObserver;

    iget-object v1, p0, Lcom/samsung/android/dualscreen/DualScreenSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/dualscreen/DualScreenSettings$SettingsObserver;-><init>(Lcom/samsung/android/dualscreen/DualScreenSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/dualscreen/DualScreenSettings;->mSettingsObserver:Lcom/samsung/android/dualscreen/DualScreenSettings$SettingsObserver;

    iget-object v0, p0, Lcom/samsung/android/dualscreen/DualScreenSettings;->mSettingsObserver:Lcom/samsung/android/dualscreen/DualScreenSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/samsung/android/dualscreen/DualScreenSettings$SettingsObserver;->observe()V

    return-void
.end method

.method public isDesktopModeEnabled()Z
    .locals 2

    const/4 v0, 0x1

    sget v1, Lcom/samsung/android/dualscreen/DualScreenSettings;->mDesktopModeEnabled:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDualScreenDisplayChooserEnabled()Z
    .locals 2

    const/4 v0, 0x1

    sget v1, Lcom/samsung/android/dualscreen/DualScreenSettings;->mDualScreenDisplayChooserEnabled:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDualScreenModeEnabled()Z
    .locals 2

    const/4 v0, 0x1

    sget v1, Lcom/samsung/android/dualscreen/DualScreenSettings;->mDualScreenModeEnabled:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDualScreenOppositeLaunchEnabled()Z
    .locals 2

    const/4 v0, 0x1

    sget v1, Lcom/samsung/android/dualscreen/DualScreenSettings;->mDualScreenOppositeLaunchEnabled:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnSettingChangedListener(Lcom/samsung/android/dualscreen/DualScreenSettings$OnSettingChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/dualscreen/DualScreenSettings;->mOnSettingChangedListener:Lcom/samsung/android/dualscreen/DualScreenSettings$OnSettingChangedListener;

    return-void
.end method
