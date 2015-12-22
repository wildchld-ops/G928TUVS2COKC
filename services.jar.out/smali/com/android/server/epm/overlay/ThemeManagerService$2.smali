.class Lcom/android/server/epm/overlay/ThemeManagerService$2;
.super Ljava/lang/Object;
.source "ThemeManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/epm/overlay/ThemeManagerService;->onMasterInstalled(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

.field final synthetic val$am:Landroid/content/res/AssetManager;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$previewMasterPath:Ljava/lang/String;

.field final synthetic val$string:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/epm/overlay/ThemeManagerService;Ljava/lang/String;Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService$2;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iput-object p2, p0, Lcom/android/server/epm/overlay/ThemeManagerService$2;->val$string:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/epm/overlay/ThemeManagerService$2;->val$am:Landroid/content/res/AssetManager;

    iput-object p4, p0, Lcom/android/server/epm/overlay/ThemeManagerService$2;->val$previewMasterPath:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/epm/overlay/ThemeManagerService$2;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService$2;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService$2;->val$string:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/epm/overlay/ThemeManagerService$2;->val$am:Landroid/content/res/AssetManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "preview/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService$2;->val$string:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService$2;->val$previewMasterPath:Ljava/lang/String;

    # invokes: Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$1100(Lcom/android/server/epm/overlay/ThemeManagerService;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$700()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception in Preview. Couldn\'t copy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/epm/overlay/ThemeManagerService$2;->val$string:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in pkg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/epm/overlay/ThemeManagerService$2;->val$packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
