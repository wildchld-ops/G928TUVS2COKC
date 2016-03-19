.class Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr$2;
.super Ljava/lang/Object;
.source "SogouHotwordMgr.java"

# interfaces
.implements Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->checkUpdatable(Ljava/lang/String;Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;

.field final synthetic val$downloadCB:Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;


# direct methods
.method constructor <init>(Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr$2;->this$0:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;

    iput-object p2, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr$2;->val$downloadCB:Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleDownloadEvent(ILjava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    move v1, p1

    const/16 v3, 0x8

    if-eq p1, v3, :cond_0

    const/16 v3, 0xa

    if-eq p1, v3, :cond_0

    const/16 v1, 0xd

    move-object v2, p2

    check-cast v2, Lcom/ime/framework/dbmanager/DbDownloadInfo;

    iget-object v3, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr$2;->this$0:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;

    # invokes: Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->isUpdatable()Z
    invoke-static {v3}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->access$500(Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/ime/framework/dbmanager/DbDownloadInfo;->bAvailable:Z

    iget-object v3, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr$2;->this$0:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;

    # invokes: Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->removeTempFile()V
    invoke-static {v3}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->access$100(Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;)V

    iget-object v3, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr$2;->this$0:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;

    # invokes: Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->handleDownloadCallBack(ILjava/lang/Object;)Z
    invoke-static {v3, v1, p2}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->access$600(Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;ILjava/lang/Object;)Z

    move-result v0

    iget-object v3, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr$2;->val$downloadCB:Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr$2;->val$downloadCB:Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;

    invoke-interface {v3, v1, p2}, Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;->handleDownloadEvent(ILjava/lang/Object;)Z

    :cond_0
    return v0
.end method
