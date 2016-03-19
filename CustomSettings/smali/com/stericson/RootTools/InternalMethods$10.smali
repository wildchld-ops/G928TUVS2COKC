.class Lcom/stericson/RootTools/InternalMethods$10;
.super Lcom/stericson/RootTools/RootTools$Result;
.source "InternalMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stericson/RootTools/InternalMethods;->isProcessRunning(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$processName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/stericson/RootTools/InternalMethods$10;->val$processName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/stericson/RootTools/RootTools$Result;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 0

    return-void
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/stericson/RootTools/InternalMethods$10;->setError(I)Lcom/stericson/RootTools/RootTools$Result;

    return-void
.end method

.method public process(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/stericson/RootTools/InternalMethods$10;->val$processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/stericson/RootTools/InternalMethods$10;->setData(Ljava/io/Serializable;)Lcom/stericson/RootTools/RootTools$Result;

    :cond_0
    return-void
.end method

.method public processError(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method
