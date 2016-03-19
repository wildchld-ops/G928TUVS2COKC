.class public interface abstract Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dbListChangeCallBack;
.super Ljava/lang/Object;
.source "Xt9CategoryDBUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "dbListChangeCallBack"
.end annotation


# virtual methods
.method public abstract onAvailableDictionaries(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onDownloadedDictionaries(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onUpdatableDictionaries(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;",
            ">;)V"
        }
    .end annotation
.end method
