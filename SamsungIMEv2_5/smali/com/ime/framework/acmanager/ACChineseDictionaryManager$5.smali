.class Lcom/ime/framework/acmanager/ACChineseDictionaryManager$5;
.super Ljava/lang/Object;
.source "ACChineseDictionaryManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->connectionStatus(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/ime/framework/acmanager/ACChineseDictionaryManager;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager$5;->this$0:Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

    iput p2, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager$5;->val$status:I

    iput-object p3, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager$5;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v2, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager$5;->this$0:Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

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

    iget v2, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager$5;->val$status:I

    iget-object v3, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager$5;->val$message:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;->connectionStatus(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
