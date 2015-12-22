.class final Lcom/sec/android/app/launcher/services/LauncherService$ServiceHandler;
.super Landroid/os/Handler;
.source "LauncherService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/services/LauncherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/services/LauncherService;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/launcher/services/LauncherService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/services/LauncherService$ServiceHandler;->this$0:Lcom/sec/android/app/launcher/services/LauncherService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/launcher/services/LauncherService$ServiceHandler;->this$0:Lcom/sec/android/app/launcher/services/LauncherService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/launcher/services/LauncherService;->onHandleIntent(Landroid/content/Intent;)V

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, -0x3e8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/services/LauncherService$ServiceHandler;->this$0:Lcom/sec/android/app/launcher/services/LauncherService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/services/LauncherService;->stopSelf(I)V

    :cond_0
    return-void
.end method
