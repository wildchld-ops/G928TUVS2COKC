.class Lcom/android/server/execute/ExecuteManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "ExecuteManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/execute/ExecuteManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/execute/ExecuteManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/execute/ExecuteManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/execute/ExecuteManagerService$MyPackageMonitor;->this$0:Lcom/android/server/execute/ExecuteManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageModified(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/execute/ExecuteManagerService$MyPackageMonitor;->this$0:Lcom/android/server/execute/ExecuteManagerService;

    # invokes: Lcom/android/server/execute/ExecuteManagerService;->updateExecutableInfo()V
    invoke-static {v0}, Lcom/android/server/execute/ExecuteManagerService;->access$300(Lcom/android/server/execute/ExecuteManagerService;)V

    return-void
.end method

.method public onSomePackagesChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/execute/ExecuteManagerService$MyPackageMonitor;->this$0:Lcom/android/server/execute/ExecuteManagerService;

    # invokes: Lcom/android/server/execute/ExecuteManagerService;->updateExecutableInfo()V
    invoke-static {v0}, Lcom/android/server/execute/ExecuteManagerService;->access$300(Lcom/android/server/execute/ExecuteManagerService;)V

    return-void
.end method
