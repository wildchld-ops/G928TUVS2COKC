.class Lcom/sec/android/app/launcher/data/connectors/DataConnector$1$1;
.super Ljava/lang/Object;
.source "DataConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/data/connectors/DataConnector$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/launcher/data/connectors/DataConnector$1;

.field final synthetic val$obj:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/data/connectors/DataConnector$1;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$1$1;->this$1:Lcom/sec/android/app/launcher/data/connectors/DataConnector$1;

    iput-object p2, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$1$1;->val$obj:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$1$1;->this$1:Lcom/sec/android/app/launcher/data/connectors/DataConnector$1;

    iget-object v0, v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$1;->val$task:Lcom/sec/android/app/launcher/data/connectors/DataConnector$ILoadTask;

    invoke-interface {v0}, Lcom/sec/android/app/launcher/data/connectors/DataConnector$ILoadTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$1$1;->this$1:Lcom/sec/android/app/launcher/data/connectors/DataConnector$1;

    iget-object v0, v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$1;->val$task:Lcom/sec/android/app/launcher/data/connectors/DataConnector$ILoadTask;

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$1$1;->val$obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/sec/android/app/launcher/data/connectors/DataConnector$ILoadTask;->onPostLoad(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
