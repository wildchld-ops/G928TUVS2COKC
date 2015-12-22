.class Lcom/android/systemui/twscreenmanager/TwSwitchModeView$1;
.super Ljava/lang/Object;
.source "TwSwitchModeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->stopTwScreenManagerService(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/twscreenmanager/TwSwitchModeView;


# direct methods
.method constructor <init>(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$1;->this$0:Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-wide/16 v2, 0x32

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$1;->this$0:Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

    iget-object v1, v1, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/twscreenmanager/TwScreenManagerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$1;->this$0:Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

    iget-object v1, v1, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method
