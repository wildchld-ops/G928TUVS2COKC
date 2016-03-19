.class Lcom/myscript/atk/rmc/RMHelper$ResourceManagerGetInstalledQueryAsyncHandler;
.super Landroid/content/AsyncQueryHandler;
.source "RMHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/myscript/atk/rmc/RMHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResourceManagerGetInstalledQueryAsyncHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/myscript/atk/rmc/RMHelper;


# direct methods
.method public constructor <init>(Lcom/myscript/atk/rmc/RMHelper;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/rmc/RMHelper$ResourceManagerGetInstalledQueryAsyncHandler;->this$0:Lcom/myscript/atk/rmc/RMHelper;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 7

    const/4 v6, 0x0

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_1
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "lang"

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/myscript/atk/rmc/Version;

    const-string v4, "version"

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/myscript/atk/rmc/Version;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/myscript/atk/rmc/RMHelper$ResourceManagerGetInstalledQueryAsyncHandler;->this$0:Lcom/myscript/atk/rmc/RMHelper;

    invoke-virtual {v3}, Lcom/myscript/atk/rmc/Version;->toString()Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/myscript/atk/rmc/RMHelper;->EngineVersion:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/myscript/atk/rmc/RMHelper;->access$102(Lcom/myscript/atk/rmc/RMHelper;Ljava/lang/String;)Ljava/lang/String;

    new-instance v2, Lcom/myscript/atk/rmc/RMLanguageModel;

    invoke-direct {v2, v0, v3}, Lcom/myscript/atk/rmc/RMLanguageModel;-><init>(Ljava/lang/String;Lcom/myscript/atk/rmc/Version;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/myscript/atk/rmc/RMHelper$ResourceManagerGetInstalledQueryAsyncHandler;->this$0:Lcom/myscript/atk/rmc/RMHelper;

    # getter for: Lcom/myscript/atk/rmc/RMHelper;->mParent:Lcom/myscript/atk/rmc/VOLanguagePackManager;
    invoke-static {v4}, Lcom/myscript/atk/rmc/RMHelper;->access$000(Lcom/myscript/atk/rmc/RMHelper;)Lcom/myscript/atk/rmc/VOLanguagePackManager;

    move-result-object v4

    invoke-virtual {v4, v6, v1, v6}, Lcom/myscript/atk/rmc/VOLanguagePackManager;->updateVOlangugaeList(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
