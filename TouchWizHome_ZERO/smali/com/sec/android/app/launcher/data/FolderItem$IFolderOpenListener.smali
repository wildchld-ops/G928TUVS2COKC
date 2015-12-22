.class public interface abstract Lcom/sec/android/app/launcher/data/FolderItem$IFolderOpenListener;
.super Ljava/lang/Object;
.source "FolderItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/data/FolderItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IFolderOpenListener"
.end annotation


# virtual methods
.method public abstract onFolderCloseCompleted(Lcom/sec/android/app/launcher/data/FolderItem;Z)V
.end method

.method public abstract onFolderClosed(Lcom/sec/android/app/launcher/data/FolderItem;Z)V
.end method

.method public abstract onFolderClosing(Lcom/sec/android/app/launcher/data/FolderItem;Z)V
.end method

.method public abstract onFolderOpened(Lcom/sec/android/app/launcher/data/FolderItem;Z)V
.end method

.method public abstract onFolderOpening(Lcom/sec/android/app/launcher/data/FolderItem;Z)V
.end method
