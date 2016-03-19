.class Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService$DbAutoUpdateServiceBinder;
.super Landroid/os/Binder;
.source "DbAutoUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DbAutoUpdateServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;


# direct methods
.method constructor <init>(Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService$DbAutoUpdateServiceBinder;->this$0:Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService$DbAutoUpdateServiceBinder;->this$0:Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;

    return-object v0
.end method
