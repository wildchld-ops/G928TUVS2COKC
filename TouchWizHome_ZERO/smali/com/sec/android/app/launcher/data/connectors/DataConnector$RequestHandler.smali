.class Lcom/sec/android/app/launcher/data/connectors/DataConnector$RequestHandler;
.super Landroid/os/Handler;
.source "DataConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/data/connectors/DataConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RequestHandler"
.end annotation


# static fields
.field private static final MSG_CHECK_VALIDATION:I = 0x3

.field private static final MSG_LOAD_COMPLETED:I = 0x4

.field private static final MSG_LOAD_IMAGE_CACHE:I = 0x2

.field private static final MSG_LOAD_ITEMS:I = 0x1


# instance fields
.field private mIsItemLoading:Z

.field final synthetic this$0:Lcom/sec/android/app/launcher/data/connectors/DataConnector;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/launcher/data/connectors/DataConnector;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$RequestHandler;->this$0:Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$RequestHandler;->mIsItemLoading:Z

    return-void
.end method

.method private itemLoadCompleted(Landroid/os/Bundle;Z)V
    .locals 3

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$RequestHandler;->this$0:Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    iget-object v1, v1, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mUiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/app/launcher/data/connectors/DataConnector$RequestHandler$1;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/launcher/data/connectors/DataConnector$RequestHandler$1;-><init>(Lcom/sec/android/app/launcher/data/connectors/DataConnector$RequestHandler;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/launcher/data/connectors/DataConnector$RequestHandler$2;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/launcher/data/connectors/DataConnector$RequestHandler$2;-><init>(Lcom/sec/android/app/launcher/data/connectors/DataConnector$RequestHandler;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public checkItemLoading(Landroid/os/Bundle;Z)V
    .locals 2

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$RequestHandler;->mIsItemLoading:Z

    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/data/connectors/DataConnector$RequestHandler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/launcher/data/connectors/DataConnector$RequestHandler;->itemLoadCompleted(Landroid/os/Bundle;Z)V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$RequestHandler;->this$0:Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->loadItems()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$RequestHandler;->mIsItemLoading:Z

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/data/connectors/DataConnector$RequestHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$RequestHandler;->this$0:Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->loadImageCache()V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/data/connectors/DataConnector$RequestHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$RequestHandler;->this$0:Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->onCheckValidation()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/launcher/data/connectors/DataConnector$RequestHandler;->itemLoadCompleted(Landroid/os/Bundle;Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public startLoading()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$RequestHandler;->mIsItemLoading:Z

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/data/connectors/DataConnector$RequestHandler;->sendEmptyMessage(I)Z

    return-void
.end method
