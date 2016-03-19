.class public interface abstract Lcom/ime/framework/dbmanager/DbUpdateInterface;
.super Ljava/lang/Object;
.source "DbUpdateInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;
    }
.end annotation


# static fields
.field public static final EVT_DOWNLOAD_CANCEL:I = 0x9

.field public static final EVT_DOWNLOAD_CONNECT_ERROR:I = 0x6

.field public static final EVT_DOWNLOAD_DB_AVAILABLE:I = 0xd

.field public static final EVT_DOWNLOAD_DB_UPDATE_WAITING:I = 0xe

.field public static final EVT_DOWNLOAD_FAIL:I = 0x2

.field public static final EVT_DOWNLOAD_FINISH:I = 0x0

.field public static final EVT_DOWNLOAD_INPROGRESS:I = 0x8

.field public static final EVT_DOWNLOAD_LDB_UPDATING:I = 0xb

.field public static final EVT_DOWNLOAD_MDB_UPDATING:I = 0xc

.field public static final EVT_DOWNLOAD_NETWORK_DOWN:I = 0x4

.field public static final EVT_DOWNLOAD_NO_NETWORK:I = 0x3

.field public static final EVT_DOWNLOAD_SAME_VERSION:I = 0x7

.field public static final EVT_DOWNLOAD_START:I = 0xa

.field public static final EVT_DOWNLOAD_SUC:I = 0x1

.field public static final EVT_DOWNLOAD_TIMEOUT:I = 0x5


# virtual methods
.method public abstract cancelUpdate(Ljava/lang/String;)V
.end method

.method public abstract checkUpdatable(Ljava/lang/String;)V
.end method

.method public abstract getDBName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getUpdatePercent(Ljava/lang/String;)I
.end method

.method public abstract hasNewVersion(Ljava/lang/String;)Z
.end method

.method public abstract isUpdating(Ljava/lang/String;)Z
.end method

.method public abstract setUpdateBackground(Ljava/lang/String;)V
.end method

.method public abstract setUpdateCallBack(Ljava/lang/String;Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;)V
.end method

.method public abstract update(Ljava/lang/String;)V
.end method
