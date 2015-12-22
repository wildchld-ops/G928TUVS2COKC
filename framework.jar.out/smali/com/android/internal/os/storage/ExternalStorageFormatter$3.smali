.class Lcom/android/internal/os/storage/ExternalStorageFormatter$3;
.super Ljava/lang/Thread;
.source "ExternalStorageFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressState(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

.field final synthetic val$extStoragePath:Ljava/lang/String;

.field final synthetic val$mountService:Landroid/os/storage/IMountService;


# direct methods
.method constructor <init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;Landroid/os/storage/IMountService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    iput-object p2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->val$mountService:Landroid/os/storage/IMountService;

    iput-object p3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->val$extStoragePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/high16 v9, 0x10000000

    const/4 v6, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->val$mountService:Landroid/os/storage/IMountService;

    iget-object v8, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->val$extStoragePath:Ljava/lang/String;

    invoke-interface {v7, v8}, Landroid/os/storage/IMountService;->formatVolume(Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    const/4 v8, 0x1

    # setter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mIsFormatSuccess:Z
    invoke-static {v7, v8}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$202(Lcom/android/internal/os/storage/ExternalStorageFormatter;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v6, 0x1

    :goto_0
    if-eqz v6, :cond_1

    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z
    invoke-static {v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$300(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v7, "android.intent.extra.REASON"

    iget-object v8, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReason:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$400(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v7, v2}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendBroadcast(Landroid/content/Intent;)V

    const-string v7, "ATT"

    invoke-static {}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->readSalesCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.samsung.intent.action.SEC_FACTORY_RESET_WITHOUT_FACTORY_UI"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendBroadcast(Landroid/content/Intent;)V

    const-string v7, "ExternalStorageFormatter"

    const-string v8, "Send com.samsung.intent.action.SEC_FACTORY_RESET_WITHOUT_FACTORY_UI INTENT!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    :goto_2
    return-void

    :cond_0
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v7, v2}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendBroadcast(Landroid/content/Intent;)V

    const-string v7, "ExternalStorageFormatter"

    const-string v8, "Send android.intent.action.MASTER_CLEAR INTENT!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    if-nez v6, :cond_3

    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z
    invoke-static {v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$500(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v7, "android.intent.extra.REASON"

    iget-object v8, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReason:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$400(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v7, v2}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    :goto_3
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    goto :goto_2

    :cond_3
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->val$mountService:Landroid/os/storage/IMountService;

    iget-object v8, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->val$extStoragePath:Ljava/lang/String;

    invoke-interface {v7, v8}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->val$extStoragePath:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;
    invoke-static {v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$600(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Landroid/os/storage/StorageManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v4

    array-length v7, v4

    add-int/lit8 v1, v7, -0x1

    :goto_4
    if-ltz v1, :cond_2

    aget-object v3, v4, v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->val$mountService:Landroid/os/storage/IMountService;

    invoke-interface {v7, v3}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v7, "ExternalStorageFormatter"

    const-string v8, "Failed talking with mount service"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_1
    move-exception v7

    goto/16 :goto_0
.end method
