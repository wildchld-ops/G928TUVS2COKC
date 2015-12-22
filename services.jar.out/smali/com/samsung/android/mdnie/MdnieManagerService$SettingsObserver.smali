.class final Lcom/samsung/android/mdnie/MdnieManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "MdnieManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdnie/MdnieManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdnie/MdnieManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mdnie/MdnieManagerService;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/mdnie/MdnieManagerService$SettingsObserver;->this$0:Lcom/samsung/android/mdnie/MdnieManagerService;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/samsung/android/mdnie/MdnieManagerService$SettingsObserver;->this$0:Lcom/samsung/android/mdnie/MdnieManagerService;

    iget-object v1, p0, Lcom/samsung/android/mdnie/MdnieManagerService$SettingsObserver;->this$0:Lcom/samsung/android/mdnie/MdnieManagerService;

    # getter for: Lcom/samsung/android/mdnie/MdnieManagerService;->mScreenModeForReadingMode:I
    invoke-static {v1}, Lcom/samsung/android/mdnie/MdnieManagerService;->access$700(Lcom/samsung/android/mdnie/MdnieManagerService;)I

    move-result v1

    # setter for: Lcom/samsung/android/mdnie/MdnieManagerService;->mPrevScreenModeForReadingMode:I
    invoke-static {v0, v1}, Lcom/samsung/android/mdnie/MdnieManagerService;->access$602(Lcom/samsung/android/mdnie/MdnieManagerService;I)I

    iget-object v0, p0, Lcom/samsung/android/mdnie/MdnieManagerService$SettingsObserver;->this$0:Lcom/samsung/android/mdnie/MdnieManagerService;

    iget-object v1, p0, Lcom/samsung/android/mdnie/MdnieManagerService$SettingsObserver;->this$0:Lcom/samsung/android/mdnie/MdnieManagerService;

    # getter for: Lcom/samsung/android/mdnie/MdnieManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/android/mdnie/MdnieManagerService;->access$200(Lcom/samsung/android/mdnie/MdnieManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_mode_setting"

    const/4 v3, -0x2

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    # setter for: Lcom/samsung/android/mdnie/MdnieManagerService;->mScreenModeForReadingMode:I
    invoke-static {v0, v1}, Lcom/samsung/android/mdnie/MdnieManagerService;->access$702(Lcom/samsung/android/mdnie/MdnieManagerService;I)I

    iget-object v0, p0, Lcom/samsung/android/mdnie/MdnieManagerService$SettingsObserver;->this$0:Lcom/samsung/android/mdnie/MdnieManagerService;

    # getter for: Lcom/samsung/android/mdnie/MdnieManagerService;->mPrevScreenModeForReadingMode:I
    invoke-static {v0}, Lcom/samsung/android/mdnie/MdnieManagerService;->access$600(Lcom/samsung/android/mdnie/MdnieManagerService;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/mdnie/MdnieManagerService$SettingsObserver;->this$0:Lcom/samsung/android/mdnie/MdnieManagerService;

    # getter for: Lcom/samsung/android/mdnie/MdnieManagerService;->mScreenModeForReadingMode:I
    invoke-static {v1}, Lcom/samsung/android/mdnie/MdnieManagerService;->access$700(Lcom/samsung/android/mdnie/MdnieManagerService;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/mdnie/MdnieManagerService$SettingsObserver;->this$0:Lcom/samsung/android/mdnie/MdnieManagerService;

    # getter for: Lcom/samsung/android/mdnie/MdnieManagerService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v0}, Lcom/samsung/android/mdnie/MdnieManagerService;->access$100(Lcom/samsung/android/mdnie/MdnieManagerService;)Landroid/os/PowerManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/mdnie/MdnieManagerService$SettingsObserver;->this$0:Lcom/samsung/android/mdnie/MdnieManagerService;

    # getter for: Lcom/samsung/android/mdnie/MdnieManagerService;->mScreenModeForReadingMode:I
    invoke-static {v0}, Lcom/samsung/android/mdnie/MdnieManagerService;->access$700(Lcom/samsung/android/mdnie/MdnieManagerService;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/mdnie/MdnieManagerService$SettingsObserver;->this$0:Lcom/samsung/android/mdnie/MdnieManagerService;

    # getter for: Lcom/samsung/android/mdnie/MdnieManagerService;->mReadingScreenMode:I
    invoke-static {v1}, Lcom/samsung/android/mdnie/MdnieManagerService;->access$800(Lcom/samsung/android/mdnie/MdnieManagerService;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/mdnie/MdnieManagerService$SettingsObserver;->this$0:Lcom/samsung/android/mdnie/MdnieManagerService;

    # getter for: Lcom/samsung/android/mdnie/MdnieManagerService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v0}, Lcom/samsung/android/mdnie/MdnieManagerService;->access$100(Lcom/samsung/android/mdnie/MdnieManagerService;)Landroid/os/PowerManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->setAutoBrightnessForEbookOnly(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mdnie/MdnieManagerService$SettingsObserver;->this$0:Lcom/samsung/android/mdnie/MdnieManagerService;

    # getter for: Lcom/samsung/android/mdnie/MdnieManagerService;->mPrevScreenModeForReadingMode:I
    invoke-static {v0}, Lcom/samsung/android/mdnie/MdnieManagerService;->access$600(Lcom/samsung/android/mdnie/MdnieManagerService;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/mdnie/MdnieManagerService$SettingsObserver;->this$0:Lcom/samsung/android/mdnie/MdnieManagerService;

    # getter for: Lcom/samsung/android/mdnie/MdnieManagerService;->mReadingScreenMode:I
    invoke-static {v1}, Lcom/samsung/android/mdnie/MdnieManagerService;->access$800(Lcom/samsung/android/mdnie/MdnieManagerService;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/mdnie/MdnieManagerService$SettingsObserver;->this$0:Lcom/samsung/android/mdnie/MdnieManagerService;

    # getter for: Lcom/samsung/android/mdnie/MdnieManagerService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v0}, Lcom/samsung/android/mdnie/MdnieManagerService;->access$100(Lcom/samsung/android/mdnie/MdnieManagerService;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/PowerManager;->setAutoBrightnessForEbookOnly(Z)V

    goto :goto_0
.end method
