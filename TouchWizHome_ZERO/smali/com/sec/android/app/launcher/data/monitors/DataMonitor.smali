.class public Lcom/sec/android/app/launcher/data/monitors/DataMonitor;
.super Landroid/database/ContentObserver;
.source "DataMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/data/monitors/DataMonitor$IContentChangeListener;
    }
.end annotation


# instance fields
.field protected final mListener:Lcom/sec/android/app/launcher/data/monitors/DataMonitor$IContentChangeListener;

.field private mRegistered:Z

.field protected final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/sec/android/app/launcher/data/monitors/DataMonitor$IContentChangeListener;)V
    .locals 1

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/data/monitors/DataMonitor;->mRegistered:Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/monitors/DataMonitor;->mResolver:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/sec/android/app/launcher/data/monitors/DataMonitor;->mListener:Lcom/sec/android/app/launcher/data/monitors/DataMonitor$IContentChangeListener;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/launcher/data/monitors/DataMonitor;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/monitors/DataMonitor;->mListener:Lcom/sec/android/app/launcher/data/monitors/DataMonitor$IContentChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/monitors/DataMonitor;->mListener:Lcom/sec/android/app/launcher/data/monitors/DataMonitor$IContentChangeListener;

    invoke-interface {v0, p2}, Lcom/sec/android/app/launcher/data/monitors/DataMonitor$IContentChangeListener;->onContentChanged(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public start(Landroid/net/Uri;)V
    .locals 3

    const/4 v2, 0x1

    new-array v0, v2, [Landroid/net/Uri;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/launcher/data/monitors/DataMonitor;->start([Landroid/net/Uri;Z)V

    return-void
.end method

.method public start(Landroid/net/Uri;Z)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0, p2}, Lcom/sec/android/app/launcher/data/monitors/DataMonitor;->start([Landroid/net/Uri;Z)V

    return-void
.end method

.method public start([Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/launcher/data/monitors/DataMonitor;->start([Landroid/net/Uri;Z)V

    return-void
.end method

.method public start([Landroid/net/Uri;Z)V
    .locals 5

    iget-boolean v4, p0, Lcom/sec/android/app/launcher/data/monitors/DataMonitor;->mRegistered:Z

    if-nez v4, :cond_1

    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/monitors/DataMonitor;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v4, v3, p2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/app/launcher/data/monitors/DataMonitor;->mRegistered:Z

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/data/monitors/DataMonitor;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/monitors/DataMonitor;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/data/monitors/DataMonitor;->mRegistered:Z

    :cond_0
    return-void
.end method
