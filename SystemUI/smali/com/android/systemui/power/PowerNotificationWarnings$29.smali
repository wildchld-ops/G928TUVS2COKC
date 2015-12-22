.class Lcom/android/systemui/power/PowerNotificationWarnings$29;
.super Landroid/database/ContentObserver;
.source "PowerNotificationWarnings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerNotificationWarnings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerNotificationWarnings;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$29;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    const/4 v4, 0x0

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mZeroSettingConcept:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$29;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # getter for: Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$100(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "low_power"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$29;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    const/4 v2, 0x1

    # setter for: Lcom/android/systemui/power/PowerNotificationWarnings;->mCurrentBatteryMode:I
    invoke-static {v1, v2}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$402(Lcom/android/systemui/power/PowerNotificationWarnings;I)I

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$29;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # getter for: Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$100(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "psm_switch"

    const/4 v3, -0x2

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$29;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # setter for: Lcom/android/systemui/power/PowerNotificationWarnings;->mCurrentBatteryMode:I
    invoke-static {v1, v4}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$402(Lcom/android/systemui/power/PowerNotificationWarnings;I)I

    goto :goto_1
.end method
