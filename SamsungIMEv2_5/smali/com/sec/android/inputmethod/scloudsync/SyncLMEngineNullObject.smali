.class public Lcom/sec/android/inputmethod/scloudsync/SyncLMEngineNullObject;
.super Ljava/lang/Object;
.source "SyncLMEngineNullObject.java"

# interfaces
.implements Lcom/sec/android/inputmethod/scloudsync/ISyncLMEngine;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyAddWordList()V
    .locals 0

    return-void
.end method

.method public applyRemoveWordList()V
    .locals 0

    return-void
.end method

.method public copyRemoveList(Ljava/io/File;)V
    .locals 0

    return-void
.end method

.method public deleteLMFiles()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public extractWordList()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDirectory()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEngineName()Ljava/lang/String;
    .locals 1

    const-string v0, "NoEngine"

    return-object v0
.end method

.method public getFiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLatestUpdatedTimestamp()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getRemovedDBDirectory()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRemovedDBFiles()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getZipEngineDirectory()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getZipWorkDirectory()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isActiveSession()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeUserData(Ljava/io/File;Ljava/io/File;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public prepareZip(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public prepareZip(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
