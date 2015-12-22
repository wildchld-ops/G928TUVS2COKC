.class Lcom/android/server/LpnetManagerService$8;
.super Ljava/lang/Object;
.source "LpnetManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LpnetManagerService;->runFreezeBasedOnLRU()V
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

    iput-object p1, p0, Lcom/android/server/LpnetManagerService$8;->this$0:Lcom/android/server/LpnetManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/LpnetManagerService$8;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mAutoRunBasedFreeze:Z
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$2000(Lcom/android/server/LpnetManagerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/LpnetManagerService$8;->this$0:Lcom/android/server/LpnetManagerService;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/LpnetManagerService;->freezeBasedOnLRU(Z)V
    invoke-static {v0, v1}, Lcom/android/server/LpnetManagerService;->access$5300(Lcom/android/server/LpnetManagerService;Z)V

    :cond_0
    return-void
.end method
