.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EasyModeEnableObserver;
.super Landroid/database/ContentObserver;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EasyModeEnableObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EasyModeEnableObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EasyModeEnableObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EasyModeEnableObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "easy_mode_switch"

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EasyModeEnableObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$18900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v5

    invoke-static {v0, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEasyModeEnablebySettings:Z
    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$18802(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    const-string v0, "PhoneStatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mEasyModeEnablebySettings.onChange() - DB = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EasyModeEnableObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEasyModeEnablebySettings:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$18800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EasyModeEnableObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EasyModeEnableObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEasyModeEnablebySettings:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$18800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EasyModeEnableObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$19000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v3

    const/16 v4, 0x64

    if-ge v3, v4, :cond_1

    :goto_1
    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEasyModeActivated:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$16702(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
