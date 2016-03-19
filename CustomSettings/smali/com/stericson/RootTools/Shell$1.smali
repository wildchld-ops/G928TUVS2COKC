.class Lcom/stericson/RootTools/Shell$1;
.super Ljava/lang/Object;
.source "Shell.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericson/RootTools/Shell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stericson/RootTools/Shell;


# direct methods
.method constructor <init>(Lcom/stericson/RootTools/Shell;)V
    .locals 0

    iput-object p1, p0, Lcom/stericson/RootTools/Shell$1;->this$0:Lcom/stericson/RootTools/Shell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/stericson/RootTools/Shell$1;->this$0:Lcom/stericson/RootTools/Shell;

    # invokes: Lcom/stericson/RootTools/Shell;->writeCommands()V
    invoke-static {v1}, Lcom/stericson/RootTools/Shell;->access$0(Lcom/stericson/RootTools/Shell;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2, v0}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;ILjava/lang/Exception;)V

    goto :goto_0
.end method
