.class Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$1;
.super Landroid/content/BroadcastReceiver;
.source "StatusBarWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->access$100(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
