.class Lcom/android/server/epm/overlay/ThemeManagerService$MasterInstallObserver;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "ThemeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/epm/overlay/ThemeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MasterInstallObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/epm/overlay/ThemeManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/epm/overlay/ThemeManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService$MasterInstallObserver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/epm/overlay/ThemeManagerService;Lcom/android/server/epm/overlay/ThemeManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/epm/overlay/ThemeManagerService$MasterInstallObserver;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;)V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 3

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$700()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "packageInstalled --> packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", returnCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService$MasterInstallObserver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # setter for: Lcom/android/server/epm/overlay/ThemeManagerService;->masterInstallErrorCode:I
    invoke-static {v0, p2}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$1602(Lcom/android/server/epm/overlay/ThemeManagerService;I)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService$MasterInstallObserver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/epm/overlay/ThemeManagerService;->onMasterInstalled(Ljava/lang/String;Z)V
    invoke-static {v0, p1, v1}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$1700(Lcom/android/server/epm/overlay/ThemeManagerService;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
