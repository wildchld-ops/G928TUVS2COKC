.class Lcom/ime/framework/acmanager/ACChineseDictionaryManager$6;
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

    iput-object p1, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager$6;->this$0:Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager$6;->this$0:Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

    const/4 v1, 0x2

    # setter for: Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mRefreshStatus:I
    invoke-static {v0, v1}, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->access$302(Lcom/ime/framework/acmanager/ACChineseDictionaryManager;I)I

    return-void
.end method
