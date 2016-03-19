.class Lcom/android/phone/NotificationMgr$SecDormantSwitchObserver;
.super Landroid/database/ContentObserver;
.source "NotificationMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NotificationMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecDormantSwitchObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NotificationMgr;


# direct methods
.method public constructor <init>(Lcom/android/phone/NotificationMgr;)V
    .locals 1

    iput-object p1, p0, Lcom/android/phone/NotificationMgr$SecDormantSwitchObserver;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/NotificationMgr$SecDormantSwitchObserver;->this$0:Lcom/android/phone/NotificationMgr;

    # getter for: Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/phone/NotificationMgr;->access$500(Lcom/android/phone/NotificationMgr;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dormant_switch_onoff"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NotificationMgr$SecDormantSwitchObserver;->this$0:Lcom/android/phone/NotificationMgr;

    # getter for: Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/android/phone/NotificationMgr;->access$600(Lcom/android/phone/NotificationMgr;)Landroid/app/NotificationManager;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    return-void
.end method
