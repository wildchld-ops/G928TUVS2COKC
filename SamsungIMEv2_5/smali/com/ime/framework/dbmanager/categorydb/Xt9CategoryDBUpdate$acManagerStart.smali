.class Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$acManagerStart;
.super Ljava/lang/Object;
.source "Xt9CategoryDBUpdate.java"

# interfaces
.implements Lcom/ime/framework/acmanager/ACChineseDictionaryManager$ACManagerStartNotify;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "acManagerStart"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;


# direct methods
.method private constructor <init>(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$acManagerStart;->this$0:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$acManagerStart;-><init>(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;)V

    return-void
.end method


# virtual methods
.method public onACManagerStart()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$acManagerStart;->this$0:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    invoke-virtual {v0}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->initDownloadService()V

    return-void
.end method
