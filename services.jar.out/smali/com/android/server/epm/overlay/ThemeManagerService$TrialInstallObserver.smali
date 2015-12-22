.class Lcom/android/server/epm/overlay/ThemeManagerService$TrialInstallObserver;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "ThemeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/epm/overlay/ThemeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrialInstallObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/epm/overlay/ThemeManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/epm/overlay/ThemeManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService$TrialInstallObserver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/epm/overlay/ThemeManagerService;Lcom/android/server/epm/overlay/ThemeManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/epm/overlay/ThemeManagerService$TrialInstallObserver;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;)V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService$TrialInstallObserver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # setter for: Lcom/android/server/epm/overlay/ThemeManagerService;->masterInstallErrorCode:I
    invoke-static {v0, p2}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$1602(Lcom/android/server/epm/overlay/ThemeManagerService;I)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService$TrialInstallObserver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/epm/overlay/ThemeManagerService;->onMasterInstalled(Ljava/lang/String;Z)V
    invoke-static {v0, p1, v1}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$1700(Lcom/android/server/epm/overlay/ThemeManagerService;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
