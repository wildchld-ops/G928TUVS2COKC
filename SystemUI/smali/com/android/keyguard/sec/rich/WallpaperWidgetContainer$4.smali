.class Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer$4;
.super Landroid/os/Handler;
.source "WallpaperWidgetContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer$4;->this$0:Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    const/4 v5, 0x2

    const/4 v8, -0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer$4;->this$0:Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    # getter for: Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v2}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->access$300(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;)Landroid/os/PowerManager;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer$4;->this$0:Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    # getter for: Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v2}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->access$300(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;)Landroid/os/PowerManager;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    const-string v2, "WallpaperWidgetContainer"

    const-string v3, "unknown msg type"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    const-string v2, "WallpaperWidgetContainer"

    const-string v3, "MSG_EXPANDING"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer$4;->this$0:Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    # invokes: Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->setVisibilityView(I)V
    invoke-static {v2, v4}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->access$400(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer$4;->this$0:Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    # invokes: Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->startBackgroundAnim(I)V
    invoke-static {v2, v4}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->access$500(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;I)V

    goto :goto_0

    :pswitch_1
    const-string v2, "WallpaperWidgetContainer"

    const-string v4, "MSG_EXPANDED"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer$4;->this$0:Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    # invokes: Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->startRemoteAnimation(I)V
    invoke-static {v2, v3}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->access$600(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;I)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer$4;->this$0:Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    # invokes: Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->startBackgroundAnim(I)V
    invoke-static {v2, v5}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->access$500(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer$4;->this$0:Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    # invokes: Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->startRemoteAnimation(I)V
    invoke-static {v2, v5}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->access$600(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;I)V

    goto :goto_0

    :pswitch_3
    const-string v2, "WallpaperWidgetContainer"

    const-string v5, "MSG_PINUP"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.keyguardwallpaperupdator.wallpaper_pinup"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "req"

    iget-object v2, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer$4;->this$0:Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    # getter for: Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mPinUpState:Z
    invoke-static {v2}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->access$000(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer$4;->this$0:Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    # getter for: Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->access$700(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;)Landroid/content/Context;

    move-result-object v2

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v2, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer$4;->this$0:Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    iget-object v5, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer$4;->this$0:Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    # getter for: Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mPinUpState:Z
    invoke-static {v5}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->access$000(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;)Z

    move-result v5

    if-nez v5, :cond_2

    :goto_2
    # invokes: Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->setPinUpState(Z)V
    invoke-static {v2, v4}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->access$800(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;Z)V

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    move v4, v3

    goto :goto_2

    :pswitch_4
    const-string v2, "WallpaperWidgetContainer"

    const-string v3, "MSG_NEXT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.android.keyguardwallpaperupdator.next_wallpaper_changing"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer$4;->this$0:Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    # getter for: Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->access$700(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
