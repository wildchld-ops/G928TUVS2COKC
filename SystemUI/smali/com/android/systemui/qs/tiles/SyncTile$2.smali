.class Lcom/android/systemui/qs/tiles/SyncTile$2;
.super Landroid/os/AsyncTask;
.source "SyncTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/SyncTile;->handleClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/SyncTile;

.field final synthetic val$buttonStatus:Z

.field final synthetic val$sync:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/SyncTile;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SyncTile$2;->this$0:Lcom/android/systemui/qs/tiles/SyncTile;

    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/SyncTile$2;->val$buttonStatus:Z

    iput-boolean p3, p0, Lcom/android/systemui/qs/tiles/SyncTile$2;->val$sync:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/SyncTile$2;->val$buttonStatus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/SyncTile$2;->val$sync:Z

    if-nez v0, :cond_0

    invoke-static {v2}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/SyncTile$2;->val$sync:Z

    if-eqz v0, :cond_1

    invoke-static {v1}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/SyncTile$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/SyncTile$2;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SyncTile$2;->this$0:Lcom/android/systemui/qs/tiles/SyncTile;

    const/4 v1, 0x1

    # setter for: Lcom/android/systemui/qs/tiles/SyncTile;->mIsProcessing:Z
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/SyncTile;->access$202(Lcom/android/systemui/qs/tiles/SyncTile;Z)Z

    return-void
.end method
