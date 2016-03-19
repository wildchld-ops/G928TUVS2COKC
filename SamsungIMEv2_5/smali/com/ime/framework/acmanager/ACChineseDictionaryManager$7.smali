.class Lcom/ime/framework/acmanager/ACChineseDictionaryManager$7;
.super Landroid/os/Handler;
.source "ACChineseDictionaryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/acmanager/ACChineseDictionaryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/acmanager/ACChineseDictionaryManager;


# direct methods
.method constructor <init>(Lcom/ime/framework/acmanager/ACChineseDictionaryManager;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager$7;->this$0:Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v2, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager$7;->this$0:Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

    # getter for: Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mConnectionCallbacks:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->access$200(Lcom/ime/framework/acmanager/ACChineseDictionaryManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;

    const/16 v2, 0xa

    const-string v3, "DUMMPY_REFRESH_COMPLETE"

    invoke-interface {v0, v2, v3}, Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;->connectionStatus(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
