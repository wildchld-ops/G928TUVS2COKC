.class Lcom/ime/framework/acmanager/ACDownloadManager$5;
.super Landroid/os/Handler;
.source "ACDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/acmanager/ACDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/acmanager/ACDownloadManager;


# direct methods
.method constructor <init>(Lcom/ime/framework/acmanager/ACDownloadManager;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/acmanager/ACDownloadManager$5;->this$0:Lcom/ime/framework/acmanager/ACDownloadManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;

    const/16 v2, 0x64

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->downloadPercentage(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->dummyDownloadComplete()V

    iget-object v2, p0, Lcom/ime/framework/acmanager/ACDownloadManager$5;->this$0:Lcom/ime/framework/acmanager/ACDownloadManager;

    invoke-virtual {v0}, Lcom/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->getId()I

    move-result v3

    const/4 v4, 0x0

    # invokes: Lcom/ime/framework/acmanager/ACDownloadManager;->modifySharedPreferenceByDownloadLanguage(IZ)V
    invoke-static {v2, v3, v4}, Lcom/ime/framework/acmanager/ACDownloadManager;->access$1000(Lcom/ime/framework/acmanager/ACDownloadManager;IZ)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
