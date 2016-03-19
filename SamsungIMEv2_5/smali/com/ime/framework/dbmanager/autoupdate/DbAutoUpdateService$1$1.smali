.class Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService$1$1;
.super Ljava/lang/Object;
.source "DbAutoUpdateService.java"

# interfaces
.implements Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService$1;


# direct methods
.method constructor <init>(Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService$1;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService$1$1;->this$1:Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleDownloadEvent(ILjava/lang/Object;)Z
    .locals 4

    const/16 v1, 0xd

    if-ne p1, v1, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/ime/framework/dbmanager/DbDownloadInfo;

    iget-boolean v1, v0, Lcom/ime/framework/dbmanager/DbDownloadInfo;->bAvailable:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService$1$1;->this$1:Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService$1;

    iget-object v1, v1, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService$1;->this$0:Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;

    invoke-virtual {v1}, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;->startAutoUpdate()V

    :cond_0
    const-string v1, "DbAutoUpdateService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkUpdatable available =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Lcom/ime/framework/dbmanager/DbDownloadInfo;->bAvailable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x1

    return v1
.end method
