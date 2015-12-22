.class Lcom/sec/android/app/launcher/services/LauncherService$1;
.super Ljava/lang/Object;
.source "LauncherService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/services/LauncherService;->onHandleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/services/LauncherService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/services/LauncherService;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/services/LauncherService$1;->this$0:Lcom/sec/android/app/launcher/services/LauncherService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method
