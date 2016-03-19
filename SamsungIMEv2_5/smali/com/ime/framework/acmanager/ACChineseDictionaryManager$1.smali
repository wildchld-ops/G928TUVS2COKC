.class Lcom/ime/framework/acmanager/ACChineseDictionaryManager$1;
.super Landroid/os/Handler;
.source "ACChineseDictionaryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/acmanager/ACChineseDictionaryManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/acmanager/ACChineseDictionaryManager;


# direct methods
.method constructor <init>(Lcom/ime/framework/acmanager/ACChineseDictionaryManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager$1;->this$0:Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "ACChineseDictionaryManager"

    const-string v1, "init ACSDK message arrival"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager$1;->this$0:Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

    # getter for: Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->syncACManagerObj:Ljava/lang/Object;
    invoke-static {v0}, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->access$000(Lcom/ime/framework/acmanager/ACChineseDictionaryManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager$1;->this$0:Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

    # invokes: Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->initACSDKManager()V
    invoke-static {v0}, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->access$100(Lcom/ime/framework/acmanager/ACChineseDictionaryManager;)V

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
