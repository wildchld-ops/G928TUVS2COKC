.class public interface abstract Lcom/sec/android/inputmethod/scloudsync/ISyncLMEngine;
.super Ljava/lang/Object;
.source "ISyncLMEngine.java"


# static fields
.field public static final ADD_WORD_LIST:Ljava/lang/String; = "AddWordList_Default"

.field public static final ADD_WORD_LIST_KOR:Ljava/lang/String; = "AddWordList_Korean"

.field public static final MAX_SYNC_WORD_COUNT:I = 0x1388


# virtual methods
.method public abstract applyAddWordList()V
.end method

.method public abstract applyRemoveWordList()V
.end method

.method public abstract copyRemoveList(Ljava/io/File;)V
.end method

.method public abstract deleteLMFiles()Z
.end method

.method public abstract extractWordList()Z
.end method

.method public abstract getDirectory()Ljava/lang/String;
.end method

.method public abstract getEngineName()Ljava/lang/String;
.end method

.method public abstract getFiles()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLatestUpdatedTimestamp()J
.end method

.method public abstract getRemovedDBDirectory()Ljava/lang/String;
.end method

.method public abstract getRemovedDBFiles()[Ljava/lang/String;
.end method

.method public abstract getZipEngineDirectory()Ljava/lang/String;
.end method

.method public abstract getZipWorkDirectory()Ljava/lang/String;
.end method

.method public abstract isActiveSession()Z
.end method

.method public abstract mergeUserData(Ljava/io/File;Ljava/io/File;)I
.end method

.method public abstract prepareZip(Ljava/lang/String;)Z
.end method

.method public abstract prepareZip(Ljava/lang/String;Ljava/lang/String;)Z
.end method
