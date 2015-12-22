.class Lcom/android/server/LpnetManagerService$7;
.super Landroid/app/IProcessObserver$Stub;
.source "LpnetManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LpnetManagerService;->initFreezerActionNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LpnetManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LpnetManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/LpnetManagerService$7;->this$0:Lcom/android/server/LpnetManagerService;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/android/server/LpnetManagerService$7;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->pm:Landroid/content/pm/PackageManager;
    invoke-static {v1}, Lcom/android/server/LpnetManagerService;->access$1200(Lcom/android/server/LpnetManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    aget-object v1, v0, v4

    if-eqz v1, :cond_1

    # getter for: Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z
    invoke-static {}, Lcom/android/server/LpnetManagerService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "LpnetManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Foregournd pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/LpnetManagerService$7;->this$0:Lcom/android/server/LpnetManagerService;

    aget-object v2, v0, v4

    # invokes: Lcom/android/server/LpnetManagerService;->freezerActionNotificationBroadcast(Ljava/lang/String;I)V
    invoke-static {v1, v2, v4}, Lcom/android/server/LpnetManagerService;->access$5800(Lcom/android/server/LpnetManagerService;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public onProcessDied(II)V
    .locals 0

    return-void
.end method

.method public onProcessStateChanged(III)V
    .locals 0

    return-void
.end method
