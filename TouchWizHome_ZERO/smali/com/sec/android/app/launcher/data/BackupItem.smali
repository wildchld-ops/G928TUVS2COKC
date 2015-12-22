.class public Lcom/sec/android/app/launcher/data/BackupItem;
.super Ljava/lang/Object;
.source "BackupItem.java"


# instance fields
.field protected mCellX:I

.field protected mCellY:I

.field protected mContainerId:I

.field protected mItemView:Lcom/sec/daliviews/views/NativeViewBase;

.field protected mPos:I

.field protected mSpanX:I

.field protected mSpanY:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sec/android/app/launcher/data/BackupItem;->mCellX:I

    iput v0, p0, Lcom/sec/android/app/launcher/data/BackupItem;->mCellY:I

    iput v1, p0, Lcom/sec/android/app/launcher/data/BackupItem;->mSpanX:I

    iput v1, p0, Lcom/sec/android/app/launcher/data/BackupItem;->mSpanY:I

    iput v0, p0, Lcom/sec/android/app/launcher/data/BackupItem;->mPos:I

    iput v0, p0, Lcom/sec/android/app/launcher/data/BackupItem;->mContainerId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/BackupItem;->mItemView:Lcom/sec/daliviews/views/NativeViewBase;

    return-void
.end method


# virtual methods
.method public getCellX()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/data/BackupItem;->mCellX:I

    return v0
.end method

.method public getCellY()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/data/BackupItem;->mCellY:I

    return v0
.end method

.method public getContainerId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/data/BackupItem;->mContainerId:I

    return v0
.end method

.method public getItemView()Lcom/sec/daliviews/views/NativeViewBase;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/BackupItem;->mItemView:Lcom/sec/daliviews/views/NativeViewBase;

    return-object v0
.end method

.method public getPos()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/data/BackupItem;->mPos:I

    return v0
.end method

.method public getSpanX()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/data/BackupItem;->mSpanX:I

    return v0
.end method

.method public getSpanY()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/data/BackupItem;->mSpanY:I

    return v0
.end method

.method public setItem(Lcom/sec/daliviews/views/Item;)V
    .locals 1

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getCellX()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/launcher/data/BackupItem;->mCellX:I

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getCellY()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/launcher/data/BackupItem;->mCellY:I

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getSpanX()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/launcher/data/BackupItem;->mSpanX:I

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getSpanY()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/launcher/data/BackupItem;->mSpanY:I

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getPos()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/launcher/data/BackupItem;->mPos:I

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getContainerId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/launcher/data/BackupItem;->mContainerId:I

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/BackupItem;->mItemView:Lcom/sec/daliviews/views/NativeViewBase;

    return-void
.end method
