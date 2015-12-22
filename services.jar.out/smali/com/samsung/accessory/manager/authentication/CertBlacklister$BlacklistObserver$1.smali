.class Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver$1;
.super Ljava/lang/Thread;
.source "CertBlacklister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->readFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;


# direct methods
.method constructor <init>(Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver$1;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver$1;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->mTmpDir:Ljava/io/File;
    invoke-static {v1}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->access$100(Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;)Ljava/io/File;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlacklister;->DBG:Z
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CertBlacklister"

    const-string v3, "Read a blacklist from file.."

    invoke-static {v1, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver$1;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    sget-object v3, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->PUBKEY_PATH:Ljava/lang/String;

    invoke-static {v3}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->mBlacklist:Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->access$202(Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlacklister;->DBG:Z
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "CertBlacklister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mBlacklist = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver$1;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->mBlacklist:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->access$200(Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    const-string v1, "CertBlacklister"

    const-string v3, "File does not exist"

    invoke-static {v1, v3}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catch_1
    move-exception v0

    :try_start_3
    const-string v1, "CertBlacklister"

    const-string v3, "Failed to read list"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
