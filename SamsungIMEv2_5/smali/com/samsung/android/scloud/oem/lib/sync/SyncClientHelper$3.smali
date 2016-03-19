.class Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper$3;
.super Ljava/lang/Object;
.source "SyncClientHelper.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper$SyncServiceHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleServiceAction(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 12

    const-string v0, "data_version"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v0, "SCloudClientHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v11, "UPLOAD : "

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, ", v : "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "local_id"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "upload_file_list"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;

    move-result-object v0

    # getter for: Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->mClientMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->access$0(Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/scloud/oem/lib/sync/ISCloudSyncClient;

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/scloud/oem/lib/sync/ISCloudSyncClient;->getLocalChange(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v6

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    if-eqz v6, :cond_0

    :try_start_0
    const-string v0, "content_sync_file"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/os/ParcelFileDescriptor;

    new-instance v9, Ljava/io/FileWriter;

    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {v9, v6}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V

    const-string v0, "SCloudClientHelper"

    const-string v1, "write content Str : content.sync"

    invoke-static {v0, v1}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v0, "is_success"

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "upload_file_list"

    invoke-virtual {v10, v0, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :goto_1
    return-object v10

    :cond_0
    const-string v0, "SCloudClientHelper"

    const-string v1, "content is null : content.sync"

    invoke-static {v0, v1}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    const-string v0, "SCloudClientHelper"

    const-string v1, "getLocalChange err "

    invoke-static {v0, v1, v7}, Lcom/samsung/android/scloud/oem/lib/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "is_success"

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1
.end method
