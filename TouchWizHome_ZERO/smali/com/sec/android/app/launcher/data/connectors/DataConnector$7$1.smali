.class Lcom/sec/android/app/launcher/data/connectors/DataConnector$7$1;
.super Ljava/lang/Object;
.source "DataConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/data/connectors/DataConnector$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/launcher/data/connectors/DataConnector$7;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/data/connectors/DataConnector$7;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$7$1;->this$1:Lcom/sec/android/app/launcher/data/connectors/DataConnector$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$7$1;->this$1:Lcom/sec/android/app/launcher/data/connectors/DataConnector$7;

    iget-object v0, v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$7;->this$0:Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$7$1;->this$1:Lcom/sec/android/app/launcher/data/connectors/DataConnector$7;

    iget-object v1, v1, Lcom/sec/android/app/launcher/data/connectors/DataConnector$7;->val$item:Lcom/sec/daliviews/views/Item;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->removeItemFromCache(Lcom/sec/daliviews/views/Item;)V

    return-void
.end method
