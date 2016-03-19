.class Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr$1;
.super Ljava/lang/Object;
.source "SogouHotwordMgr.java"

# interfaces
.implements Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->update(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;


# direct methods
.method constructor <init>(Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr$1;->this$0:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleDownloadEvent(ILjava/lang/Object;)Z
    .locals 4

    move v0, p1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr$1;->this$0:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;

    # invokes: Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->handleDownloadCallBack(ILjava/lang/Object;)Z
    invoke-static {v2, v0, p2}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->access$400(Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;ILjava/lang/Object;)Z

    move-result v2

    return v2

    :pswitch_0
    iget-object v2, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr$1;->this$0:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;

    # invokes: Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->getDownloadHotWords()Ljava/util/List;
    invoke-static {v2}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->access$000(Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr$1;->this$0:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;

    # invokes: Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->removeTempFile()V
    invoke-static {v2}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->access$100(Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;)V

    const/4 v0, 0x7

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr$1;->this$0:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;

    # invokes: Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->replaceXmlFile()V
    invoke-static {v2}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->access$200(Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;)V

    iget-object v2, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr$1;->this$0:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;

    const-string v3, "zh_CN"

    # invokes: Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->convertXmlToEngin(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->access$300(Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
