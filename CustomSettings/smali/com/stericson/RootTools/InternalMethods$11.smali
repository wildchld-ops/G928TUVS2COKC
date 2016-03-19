.class Lcom/stericson/RootTools/InternalMethods$11;
.super Lcom/stericson/RootTools/RootTools$Result;
.source "InternalMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stericson/RootTools/InternalMethods;->killProcess(Ljava/lang/String;)Z
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

    iput-object p1, p0, Lcom/stericson/RootTools/InternalMethods$11;->val$processName:Ljava/lang/String;

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

    invoke-virtual {p0, v0}, Lcom/stericson/RootTools/InternalMethods$11;->setError(I)Lcom/stericson/RootTools/RootTools$Result;

    return-void
.end method

.method public process(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v3, p0, Lcom/stericson/RootTools/InternalMethods$11;->val$processName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/stericson/RootTools/InternalVariables;->psPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/stericson/RootTools/InternalMethods$11;->getData()Ljava/io/Serializable;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/stericson/RootTools/InternalMethods$11;->getData()Ljava/io/Serializable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/stericson/RootTools/InternalMethods$11;->setData(Ljava/io/Serializable;)Lcom/stericson/RootTools/RootTools$Result;

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Found pid: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0, v1}, Lcom/stericson/RootTools/InternalMethods$11;->setData(Ljava/io/Serializable;)Lcom/stericson/RootTools/RootTools$Result;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "Error with regex!"

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    :try_start_1
    const-string v3, "Matching in ps command failed!"

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
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
