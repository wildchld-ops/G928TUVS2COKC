.class public abstract Lcom/sec/daliviews/views/Item;
.super Lcom/sec/daliviews/views/PeerBase;
.source "Item.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/sec/daliviews/views/PeerBase$OnPeerDestroyedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/daliviews/views/Item$ViewLinkedListener;
    }
.end annotation


# static fields
.field public static final INVALID_CELL_POS:I = -0x1

.field public static final INVALID_CONTAINER_ID:I = -0x1

.field public static final INVALID_CONTAINER_TYPE:I = -0x1

.field public static final INVALID_ID:I = -0x1

.field public static final RESIZE_BOTH:I = 0x3

.field public static final RESIZE_HORIZONTAL:I = 0x1

.field public static final RESIZE_NONE:I = 0x0

.field public static final RESIZE_VERTICAL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Item"

.field public static final TRASH_CONTAINER_ID:I = -0x2


# instance fields
.field protected mCellX:I

.field protected mCellY:I

.field protected mContainerId:I

.field protected mContainerType:I

.field protected mCustomContainerId:I

.field protected mCustomPos:I

.field protected mDbId:I

.field protected mId:J

.field protected mItemType:I

.field protected mMaxSpanX:I

.field protected mMaxSpanY:I

.field protected mMinSpanX:I

.field protected mMinSpanY:I

.field protected mMovability:I

.field protected mPos:I

.field protected mResizeNotImmediate:Z

.field protected mSpanX:I

.field protected mSpanY:I

.field protected mTitle:Ljava/lang/String;

.field protected mView:Lcom/sec/daliviews/views/NativeViewBase;

.field protected mViewLinkedListener:Lcom/sec/daliviews/views/Item$ViewLinkedListener;

.field protected mViewLinkedLock:Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0, v1}, Lcom/sec/daliviews/views/PeerBase;-><init>(Z)V

    iput v0, p0, Lcom/sec/daliviews/views/Item;->mCellX:I

    iput v0, p0, Lcom/sec/daliviews/views/Item;->mCellY:I

    iput v1, p0, Lcom/sec/daliviews/views/Item;->mSpanX:I

    iput v1, p0, Lcom/sec/daliviews/views/Item;->mSpanY:I

    iput v2, p0, Lcom/sec/daliviews/views/Item;->mMinSpanX:I

    iput v2, p0, Lcom/sec/daliviews/views/Item;->mMinSpanY:I

    iput v0, p0, Lcom/sec/daliviews/views/Item;->mMaxSpanX:I

    iput v0, p0, Lcom/sec/daliviews/views/Item;->mMaxSpanY:I

    iput v0, p0, Lcom/sec/daliviews/views/Item;->mPos:I

    iput v0, p0, Lcom/sec/daliviews/views/Item;->mDbId:I

    iput v0, p0, Lcom/sec/daliviews/views/Item;->mContainerType:I

    iput v0, p0, Lcom/sec/daliviews/views/Item;->mContainerId:I

    iput v2, p0, Lcom/sec/daliviews/views/Item;->mMovability:I

    iput-object v3, p0, Lcom/sec/daliviews/views/Item;->mTitle:Ljava/lang/String;

    iput v0, p0, Lcom/sec/daliviews/views/Item;->mItemType:I

    iput v0, p0, Lcom/sec/daliviews/views/Item;->mCustomPos:I

    iput v0, p0, Lcom/sec/daliviews/views/Item;->mCustomContainerId:I

    iput-object v3, p0, Lcom/sec/daliviews/views/Item;->mView:Lcom/sec/daliviews/views/NativeViewBase;

    iput-object v3, p0, Lcom/sec/daliviews/views/Item;->mViewLinkedListener:Lcom/sec/daliviews/views/Item$ViewLinkedListener;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/views/Item;->mViewLinkedLock:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/sec/daliviews/views/Item;->mResizeNotImmediate:Z

    invoke-static {p0}, Lcom/sec/daliviews/views/IdGenerator;->getId(Lcom/sec/daliviews/views/Item;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/daliviews/views/Item;->mId:J

    return-void
.end method

.method public static native cloneItems([J[J)Z
.end method

.method private native getCellX(J)I
.end method

.method private native getCellY(J)I
.end method

.method private native getContainerId(J)I
.end method

.method private native getContainerType(J)I
.end method

.method private native getItemView(J)Lcom/sec/daliviews/views/NativeViewBase;
.end method

.method private native getMovability(J)I
.end method

.method private native getPos(J)I
.end method

.method private native getSpanX(J)I
.end method

.method private native getSpanY(J)I
.end method

.method private native initParams(JJIIIIIIIILjava/lang/String;IIIZ)V
.end method

.method private native linkItemView(JJ)V
.end method

.method private native setCellX(JI)V
.end method

.method private native setCellY(JI)V
.end method

.method private native setContainerId(JI)V
.end method

.method private native setContainerType(JI)V
.end method

.method private native setCustomContainerId(JI)V
.end method

.method private native setCustomPos(JI)V
.end method

.method private native setCustomPosition(JII)V
.end method

.method private native setItemType(JI)V
.end method

.method private native setMaxSpanXY(JII)V
.end method

.method private native setMinSpanXY(JII)V
.end method

.method private native setMovability(JI)V
.end method

.method private native setPos(JI)V
.end method

.method private native setPosition(JII)V
.end method

.method private native setPosition(JIII)V
.end method

.method private native setPosition(JIIII)V
.end method

.method private native setResizeNotImmediate(JZ)V
.end method

.method private native setSize(JII)V
.end method

.method private native setSpanX(JI)V
.end method

.method private native setSpanY(JI)V
.end method

.method private native setTitle(JLjava/lang/String;)V
.end method

.method private native unlinkItemView(J)V
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/Item;

    invoke-static {v0}, Lcom/sec/daliviews/views/IdGenerator;->getId(Lcom/sec/daliviews/views/Item;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/sec/daliviews/views/Item;->mId:J

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/sec/daliviews/views/Item;->setPeer(J)V

    invoke-static {v0}, Lcom/sec/daliviews/views/NativeApp;->registerPeerObject(Lcom/sec/daliviews/views/PeerBase;)V

    return-object v0
.end method

.method public containsKeyword(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected native create()J
.end method

.method public createItemView()Lcom/sec/daliviews/views/NativeViewBase;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/daliviews/views/Item;->createItemView(Z)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    return-object v0
.end method

.method public createItemView(Z)Lcom/sec/daliviews/views/NativeViewBase;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/daliviews/views/Item;->onCreateItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/daliviews/views/Item;->linkItemView(Lcom/sec/daliviews/views/NativeViewBase;)V

    :goto_0
    move-object v2, v1

    :goto_1
    return-object v2

    :cond_0
    invoke-virtual {p0, v1}, Lcom/sec/daliviews/views/Item;->onViewLinked(Lcom/sec/daliviews/views/NativeViewBase;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Item"

    const-string v3, "IllegalStateException received from Item.createItemView()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_2
    const/4 v2, 0x0

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Landroid/view/InflateException;->printStackTrace()V

    goto :goto_2
.end method

.method public destroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/Item;->unlinkItemView()V

    invoke-super {p0}, Lcom/sec/daliviews/views/PeerBase;->destroy()V

    return-void
.end method

.method protected native destroy(J)V
.end method

.method public getCellX()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/Item;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/sec/daliviews/views/PeerBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/Item;->getCellX(J)I

    move-result v0

    iput v0, p0, Lcom/sec/daliviews/views/Item;->mCellX:I

    :cond_0
    iget v0, p0, Lcom/sec/daliviews/views/Item;->mCellX:I

    return v0
.end method

.method public getCellY()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/Item;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/sec/daliviews/views/PeerBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/Item;->getCellY(J)I

    move-result v0

    iput v0, p0, Lcom/sec/daliviews/views/Item;->mCellY:I

    :cond_0
    iget v0, p0, Lcom/sec/daliviews/views/Item;->mCellY:I

    return v0
.end method

.method public getContainerId()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/Item;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/sec/daliviews/views/PeerBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/Item;->getContainerId(J)I

    move-result v0

    iput v0, p0, Lcom/sec/daliviews/views/Item;->mContainerId:I

    :cond_0
    iget v0, p0, Lcom/sec/daliviews/views/Item;->mContainerId:I

    return v0
.end method

.method public getContainerType()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/Item;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/sec/daliviews/views/PeerBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/Item;->getContainerType(J)I

    move-result v0

    iput v0, p0, Lcom/sec/daliviews/views/Item;->mContainerType:I

    :cond_0
    iget v0, p0, Lcom/sec/daliviews/views/Item;->mContainerType:I

    return v0
.end method

.method public getCustomContainerId()I
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/views/Item;->mCustomContainerId:I

    return v0
.end method

.method public getCustomPos()I
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/views/Item;->mCustomPos:I

    return v0
.end method

.method public getDbId()I
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/views/Item;->mDbId:I

    return v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/daliviews/views/Item;->mId:J

    return-wide v0
.end method

.method public getItemType()I
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/views/Item;->mItemType:I

    return v0
.end method

.method public getItemView()Lcom/sec/daliviews/views/NativeViewBase;
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/Item;->mView:Lcom/sec/daliviews/views/NativeViewBase;

    return-object v0
.end method

.method public getJContainerId()I
    .locals 2

    iget v0, p0, Lcom/sec/daliviews/views/Item;->mContainerId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/Item;->getContainerId()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/daliviews/views/Item;->mContainerId:I

    goto :goto_0
.end method

.method public getMaxSpanX()I
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/views/Item;->mMaxSpanX:I

    return v0
.end method

.method public getMaxSpanY()I
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/views/Item;->mMaxSpanY:I

    return v0
.end method

.method public getMinSpanX()I
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/views/Item;->mMinSpanX:I

    return v0
.end method

.method public getMinSpanY()I
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/views/Item;->mMinSpanY:I

    return v0
.end method

.method public getMovability()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/Item;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/sec/daliviews/views/PeerBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/Item;->getMovability(J)I

    move-result v0

    iput v0, p0, Lcom/sec/daliviews/views/Item;->mMovability:I

    :cond_0
    iget v0, p0, Lcom/sec/daliviews/views/Item;->mMovability:I

    return v0
.end method

.method public getPeerAndCreateIfNeeded()J
    .locals 21

    invoke-virtual/range {p0 .. p0}, Lcom/sec/daliviews/views/Item;->isValidPeer()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/daliviews/views/Item;->create()J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/sec/daliviews/views/Item;->setPeer(J)V

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/sec/daliviews/views/Item;->mId:J

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/daliviews/views/Item;->mCellX:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/daliviews/views/Item;->mCellY:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/daliviews/views/Item;->mSpanX:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/daliviews/views/Item;->mSpanY:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/daliviews/views/Item;->mPos:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/daliviews/views/Item;->mContainerType:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/daliviews/views/Item;->mContainerId:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/daliviews/views/Item;->mMovability:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/daliviews/views/Item;->mTitle:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/daliviews/views/Item;->mItemType:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/daliviews/views/Item;->mCustomPos:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/daliviews/views/Item;->mCustomContainerId:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/daliviews/views/Item;->mResizeNotImmediate:Z

    move/from16 v20, v0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v20}, Lcom/sec/daliviews/views/Item;->initParams(JJIIIIIIIILjava/lang/String;IIIZ)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/daliviews/views/Item;->mMinSpanX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/daliviews/views/Item;->mMinSpanY:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/daliviews/views/Item;->setMinSpanXY(II)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/daliviews/views/Item;->mMaxSpanX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/daliviews/views/Item;->mMaxSpanY:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/daliviews/views/Item;->setMaxSpanXY(II)V

    :cond_0
    invoke-super/range {p0 .. p0}, Lcom/sec/daliviews/views/PeerBase;->getPeer()J

    move-result-wide v2

    return-wide v2
.end method

.method public getPos()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/Item;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/sec/daliviews/views/PeerBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/Item;->getPos(J)I

    move-result v0

    iput v0, p0, Lcom/sec/daliviews/views/Item;->mPos:I

    :cond_0
    iget v0, p0, Lcom/sec/daliviews/views/Item;->mPos:I

    return v0
.end method

.method protected getResizeMode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSpanX()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/Item;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/sec/daliviews/views/PeerBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/Item;->getSpanX(J)I

    move-result v0

    iput v0, p0, Lcom/sec/daliviews/views/Item;->mSpanX:I

    :cond_0
    iget v0, p0, Lcom/sec/daliviews/views/Item;->mSpanX:I

    return v0
.end method

.method public getSpanY()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/Item;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/sec/daliviews/views/PeerBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/Item;->getSpanY(J)I

    move-result v0

    iput v0, p0, Lcom/sec/daliviews/views/Item;->mSpanY:I

    :cond_0
    iget v0, p0, Lcom/sec/daliviews/views/Item;->mSpanY:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/Item;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method protected initParams()V
    .locals 21

    invoke-super/range {p0 .. p0}, Lcom/sec/daliviews/views/PeerBase;->getPeer()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/sec/daliviews/views/Item;->mId:J

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/daliviews/views/Item;->mCellX:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/daliviews/views/Item;->mCellY:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/daliviews/views/Item;->mSpanX:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/daliviews/views/Item;->mSpanY:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/daliviews/views/Item;->mPos:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/daliviews/views/Item;->mContainerType:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/daliviews/views/Item;->mContainerId:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/daliviews/views/Item;->mMovability:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/daliviews/views/Item;->mTitle:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/daliviews/views/Item;->mItemType:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/daliviews/views/Item;->mCustomPos:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/daliviews/views/Item;->mCustomContainerId:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/daliviews/views/Item;->mResizeNotImmediate:Z

    move/from16 v20, v0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v20}, Lcom/sec/daliviews/views/Item;->initParams(JJIIIIIIIILjava/lang/String;IIIZ)V

    return-void
.end method

.method public abstract isCompatable(Lcom/sec/daliviews/views/NativeViewBase;)Z
.end method

.method public isContainerItem()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public linkItemView(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/daliviews/views/Item;->getPeerAndCreateIfNeeded()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/views/Item;->linkItemView(JJ)V

    invoke-virtual {p0, p1}, Lcom/sec/daliviews/views/Item;->onViewLinked(Lcom/sec/daliviews/views/NativeViewBase;)V

    return-void
.end method

.method public mapItemTypeToContainerType()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public abstract onCreateItemView()Lcom/sec/daliviews/views/NativeViewBase;
.end method

.method public onPeerDestroyed(Lcom/sec/daliviews/views/PeerBase;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/daliviews/views/Item;->mView:Lcom/sec/daliviews/views/NativeViewBase;

    return-void
.end method

.method public onViewLinked(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/daliviews/views/Item;->setLinkedView(Lcom/sec/daliviews/views/NativeViewBase;)V

    invoke-virtual {p1, p0}, Lcom/sec/daliviews/views/NativeViewBase;->registerDestroyListener(Lcom/sec/daliviews/views/PeerBase$OnPeerDestroyedListener;)V

    iget-object v1, p0, Lcom/sec/daliviews/views/Item;->mViewLinkedLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/daliviews/views/Item;->mViewLinkedListener:Lcom/sec/daliviews/views/Item$ViewLinkedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/Item;->mViewLinkedListener:Lcom/sec/daliviews/views/Item$ViewLinkedListener;

    invoke-interface {v0, p0, p1}, Lcom/sec/daliviews/views/Item$ViewLinkedListener;->onViewLinked(Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onViewUnlinked(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 1

    invoke-virtual {p1, p0}, Lcom/sec/daliviews/views/NativeViewBase;->unregisterDestroyListener(Lcom/sec/daliviews/views/PeerBase$OnPeerDestroyedListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/daliviews/views/Item;->setLinkedView(Lcom/sec/daliviews/views/NativeViewBase;)V

    return-void
.end method

.method public packageUpdated(Lcom/sec/daliviews/views/Item;)V
    .locals 0

    return-void
.end method

.method public abstract populateView(Lcom/sec/daliviews/views/NativeViewBase;)V
.end method

.method protected resetItem()V
    .locals 3

    const-string v0, "Item"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetItem() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/daliviews/views/Item;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/daliviews/views/Item;->setPeer(J)V

    return-void
.end method

.method public resetPosition()V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v1}, Lcom/sec/daliviews/views/Item;->setPosition(III)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/daliviews/views/Item;->setCustomPosition(II)V

    return-void
.end method

.method public setCellX(I)V
    .locals 2

    iput p1, p0, Lcom/sec/daliviews/views/Item;->mCellX:I

    invoke-virtual {p0}, Lcom/sec/daliviews/views/Item;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/sec/daliviews/views/PeerBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/Item;->setCellX(JI)V

    :cond_0
    return-void
.end method

.method public setCellY(I)V
    .locals 2

    iput p1, p0, Lcom/sec/daliviews/views/Item;->mCellY:I

    invoke-virtual {p0}, Lcom/sec/daliviews/views/Item;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/sec/daliviews/views/PeerBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/Item;->setCellY(JI)V

    :cond_0
    return-void
.end method

.method public setContainerId(I)V
    .locals 2

    iput p1, p0, Lcom/sec/daliviews/views/Item;->mContainerId:I

    invoke-virtual {p0}, Lcom/sec/daliviews/views/Item;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/sec/daliviews/views/PeerBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/Item;->setContainerId(JI)V

    :cond_0
    return-void
.end method

.method public setContainerType(I)V
    .locals 2

    iput p1, p0, Lcom/sec/daliviews/views/Item;->mContainerType:I

    invoke-virtual {p0}, Lcom/sec/daliviews/views/Item;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/sec/daliviews/views/PeerBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/Item;->setContainerType(JI)V

    :cond_0
    return-void
.end method

.method public setCustomContainerId(I)V
    .locals 2

    iput p1, p0, Lcom/sec/daliviews/views/Item;->mCustomContainerId:I

    invoke-virtual {p0}, Lcom/sec/daliviews/views/Item;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/sec/daliviews/views/PeerBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/Item;->setCustomContainerId(JI)V

    :cond_0
    return-void
.end method

.method public setCustomPos(I)V
    .locals 2

    iput p1, p0, Lcom/sec/daliviews/views/Item;->mCustomPos:I

    invoke-virtual {p0}, Lcom/sec/daliviews/views/Item;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/sec/daliviews/views/PeerBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/Item;->setCustomPos(JI)V

    :cond_0
    return-void
.end method

.method public setCustomPosition(II)V
    .locals 2

    iput p1, p0, Lcom/sec/daliviews/views/Item;->mCustomPos:I

    iput p2, p0, Lcom/sec/daliviews/views/Item;->mCustomContainerId:I

    invoke-virtual {p0}, Lcom/sec/daliviews/views/Item;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/sec/daliviews/views/PeerBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sec/daliviews/views/Item;->setCustomPosition(JII)V

    :cond_0
    return-void
.end method

.method public setDbId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/daliviews/views/Item;->mDbId:I

    return-void
.end method

.method public setItemType(I)V
    .locals 2

    iput p1, p0, Lcom/sec/daliviews/views/Item;->mItemType:I

    invoke-virtual {p0}, Lcom/sec/daliviews/views/Item;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/sec/daliviews/views/PeerBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/Item;->setItemType(JI)V

    :cond_0
    return-void
.end method

.method public setLinkedView(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/Item;->mView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/Item;->mView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/Item;->mView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0, p0}, Lcom/sec/daliviews/views/NativeViewBase;->unregisterDestroyListener(Lcom/sec/daliviews/views/PeerBase$OnPeerDestroyedListener;)V

    :cond_0
    iput-object p1, p0, Lcom/sec/daliviews/views/Item;->mView:Lcom/sec/daliviews/views/NativeViewBase;

    return-void
.end method

.method public setMaxSpanXY(II)V
    .locals 2

    iput p1, p0, Lcom/sec/daliviews/views/Item;->mMaxSpanX:I

    iput p2, p0, Lcom/sec/daliviews/views/Item;->mMaxSpanY:I

    invoke-virtual {p0}, Lcom/sec/daliviews/views/Item;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/sec/daliviews/views/PeerBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sec/daliviews/views/Item;->setMaxSpanXY(JII)V

    :cond_0
    return-void
.end method

.method public setMinSpanXY(II)V
    .locals 2

    iput p1, p0, Lcom/sec/daliviews/views/Item;->mMinSpanX:I

    iput p2, p0, Lcom/sec/daliviews/views/Item;->mMinSpanY:I

    invoke-virtual {p0}, Lcom/sec/daliviews/views/Item;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/sec/daliviews/views/PeerBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sec/daliviews/views/Item;->setMinSpanXY(JII)V

    :cond_0
    return-void
.end method

.method public setMovability(I)V
    .locals 2

    iput p1, p0, Lcom/sec/daliviews/views/Item;->mMovability:I

    invoke-virtual {p0}, Lcom/sec/daliviews/views/Item;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/sec/daliviews/views/PeerBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/Item;->setMovability(JI)V

    :cond_0
    return-void
.end method

.method public setPos(I)V
    .locals 2

    iput p1, p0, Lcom/sec/daliviews/views/Item;->mPos:I

    invoke-virtual {p0}, Lcom/sec/daliviews/views/Item;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/sec/daliviews/views/PeerBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/Item;->setPos(JI)V

    :cond_0
    return-void
.end method

.method public setPosition(II)V
    .locals 2

    iput p1, p0, Lcom/sec/daliviews/views/Item;->mCellX:I

    iput p2, p0, Lcom/sec/daliviews/views/Item;->mCellY:I

    invoke-virtual {p0}, Lcom/sec/daliviews/views/Item;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/sec/daliviews/views/PeerBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sec/daliviews/views/Item;->setPosition(JII)V

    :cond_0
    return-void
.end method

.method public setPosition(III)V
    .locals 7

    iput p1, p0, Lcom/sec/daliviews/views/Item;->mCellX:I

    iput p2, p0, Lcom/sec/daliviews/views/Item;->mCellY:I

    iput p3, p0, Lcom/sec/daliviews/views/Item;->mPos:I

    invoke-virtual {p0}, Lcom/sec/daliviews/views/Item;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/sec/daliviews/views/PeerBase;->getPeer()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sec/daliviews/views/Item;->setPosition(JIII)V

    :cond_0
    return-void
.end method

.method public setPosition(IIII)V
    .locals 8

    iput p1, p0, Lcom/sec/daliviews/views/Item;->mCellX:I

    iput p2, p0, Lcom/sec/daliviews/views/Item;->mCellY:I

    iput p3, p0, Lcom/sec/daliviews/views/Item;->mPos:I

    iput p4, p0, Lcom/sec/daliviews/views/Item;->mContainerId:I

    invoke-virtual {p0}, Lcom/sec/daliviews/views/Item;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/sec/daliviews/views/PeerBase;->getPeer()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/sec/daliviews/views/Item;->setPosition(JIIII)V

    :cond_0
    return-void
.end method

.method public setResizeNotImmediate(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/sec/daliviews/views/Item;->mResizeNotImmediate:Z

    invoke-virtual {p0}, Lcom/sec/daliviews/views/Item;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/sec/daliviews/views/PeerBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/Item;->setResizeNotImmediate(JZ)V

    :cond_0
    return-void
.end method

.method public setSize(II)V
    .locals 2

    iput p1, p0, Lcom/sec/daliviews/views/Item;->mSpanX:I

    iput p2, p0, Lcom/sec/daliviews/views/Item;->mSpanY:I

    invoke-virtual {p0}, Lcom/sec/daliviews/views/Item;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/sec/daliviews/views/PeerBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sec/daliviews/views/Item;->setSize(JII)V

    :cond_0
    return-void
.end method

.method public setSpanX(I)V
    .locals 2

    iput p1, p0, Lcom/sec/daliviews/views/Item;->mSpanX:I

    invoke-virtual {p0}, Lcom/sec/daliviews/views/Item;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/sec/daliviews/views/PeerBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/Item;->setSpanX(JI)V

    :cond_0
    return-void
.end method

.method public setSpanY(I)V
    .locals 2

    iput p1, p0, Lcom/sec/daliviews/views/Item;->mSpanY:I

    invoke-virtual {p0}, Lcom/sec/daliviews/views/Item;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/sec/daliviews/views/PeerBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/Item;->setSpanY(JI)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/daliviews/views/Item;->mTitle:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/daliviews/views/Item;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/sec/daliviews/views/PeerBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/Item;->setTitle(JLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setViewLinkedListener(Lcom/sec/daliviews/views/Item$ViewLinkedListener;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/daliviews/views/Item;->mViewLinkedLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/sec/daliviews/views/Item;->mViewLinkedListener:Lcom/sec/daliviews/views/Item$ViewLinkedListener;

    iget-object v0, p0, Lcom/sec/daliviews/views/Item;->mView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/Item;->mViewLinkedListener:Lcom/sec/daliviews/views/Item$ViewLinkedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/Item;->mViewLinkedListener:Lcom/sec/daliviews/views/Item$ViewLinkedListener;

    iget-object v2, p0, Lcom/sec/daliviews/views/Item;->mView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-interface {v0, p0, v2}, Lcom/sec/daliviews/views/Item$ViewLinkedListener;->onViewLinked(Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unlinkItemView()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/Item;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/Item;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/Item;->unlinkItemView(J)V

    :cond_0
    iget-object v0, p0, Lcom/sec/daliviews/views/Item;->mView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/daliviews/views/Item;->mView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {p0, v0}, Lcom/sec/daliviews/views/Item;->onViewUnlinked(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_1
    return-void
.end method

.method public update(Lcom/sec/daliviews/views/Item;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/daliviews/views/Item;->update(Lcom/sec/daliviews/views/Item;Z)Z

    move-result v0

    return v0
.end method

.method public update(Lcom/sec/daliviews/views/Item;Z)Z
    .locals 10

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget v6, p0, Lcom/sec/daliviews/views/Item;->mSpanX:I

    iget v7, p1, Lcom/sec/daliviews/views/Item;->mSpanX:I

    if-ne v6, v7, :cond_0

    iget v6, p0, Lcom/sec/daliviews/views/Item;->mSpanY:I

    iget v7, p1, Lcom/sec/daliviews/views/Item;->mSpanY:I

    if-eq v6, v7, :cond_a

    :cond_0
    move v3, v5

    :goto_0
    iget v6, p0, Lcom/sec/daliviews/views/Item;->mContainerType:I

    iget v7, p1, Lcom/sec/daliviews/views/Item;->mContainerType:I

    if-eq v6, v7, :cond_b

    move v0, v5

    :goto_1
    iget v6, p0, Lcom/sec/daliviews/views/Item;->mCellX:I

    iget v7, p1, Lcom/sec/daliviews/views/Item;->mCellX:I

    if-ne v6, v7, :cond_1

    iget v6, p0, Lcom/sec/daliviews/views/Item;->mCellY:I

    iget v7, p1, Lcom/sec/daliviews/views/Item;->mCellY:I

    if-ne v6, v7, :cond_1

    iget v6, p0, Lcom/sec/daliviews/views/Item;->mContainerId:I

    iget v7, p1, Lcom/sec/daliviews/views/Item;->mContainerId:I

    if-eq v6, v7, :cond_c

    :cond_1
    move v2, v5

    :goto_2
    iget v6, p0, Lcom/sec/daliviews/views/Item;->mCustomPos:I

    iget v7, p1, Lcom/sec/daliviews/views/Item;->mCustomPos:I

    if-ne v6, v7, :cond_2

    iget v6, p0, Lcom/sec/daliviews/views/Item;->mCustomContainerId:I

    iget v7, p1, Lcom/sec/daliviews/views/Item;->mCustomContainerId:I

    if-eq v6, v7, :cond_d

    :cond_2
    move v1, v5

    :goto_3
    if-eqz v3, :cond_3

    iget v6, p1, Lcom/sec/daliviews/views/Item;->mSpanX:I

    iget v7, p1, Lcom/sec/daliviews/views/Item;->mSpanY:I

    invoke-virtual {p0, v6, v7}, Lcom/sec/daliviews/views/Item;->setSize(II)V

    :cond_3
    if-eqz v0, :cond_4

    iget v6, p1, Lcom/sec/daliviews/views/Item;->mContainerType:I

    invoke-virtual {p0, v6}, Lcom/sec/daliviews/views/Item;->setContainerType(I)V

    :cond_4
    if-eqz p2, :cond_e

    if-eqz v1, :cond_5

    iget v6, p1, Lcom/sec/daliviews/views/Item;->mCustomPos:I

    iget v7, p1, Lcom/sec/daliviews/views/Item;->mCustomContainerId:I

    invoke-virtual {p0, v6, v7}, Lcom/sec/daliviews/views/Item;->setCustomPosition(II)V

    :cond_5
    :goto_4
    iget v6, p0, Lcom/sec/daliviews/views/Item;->mMovability:I

    iget v7, p1, Lcom/sec/daliviews/views/Item;->mMovability:I

    if-eq v6, v7, :cond_6

    iget v6, p1, Lcom/sec/daliviews/views/Item;->mMovability:I

    invoke-virtual {p0, v6}, Lcom/sec/daliviews/views/Item;->setMovability(I)V

    :cond_6
    iget-object v6, p0, Lcom/sec/daliviews/views/Item;->mTitle:Ljava/lang/String;

    iget-object v7, p1, Lcom/sec/daliviews/views/Item;->mTitle:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/sec/daliviews/utils/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p1, Lcom/sec/daliviews/views/Item;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/sec/daliviews/views/Item;->setTitle(Ljava/lang/String;)V

    :cond_7
    if-nez v3, :cond_8

    if-nez v0, :cond_8

    if-nez p2, :cond_9

    if-eqz v2, :cond_9

    :cond_8
    move v4, v5

    :cond_9
    return v4

    :cond_a
    move v3, v4

    goto :goto_0

    :cond_b
    move v0, v4

    goto :goto_1

    :cond_c
    move v2, v4

    goto :goto_2

    :cond_d
    move v1, v4

    goto :goto_3

    :cond_e
    if-eqz v2, :cond_5

    iget v6, p1, Lcom/sec/daliviews/views/Item;->mCellX:I

    iget v7, p1, Lcom/sec/daliviews/views/Item;->mCellY:I

    iget v8, p1, Lcom/sec/daliviews/views/Item;->mPos:I

    iget v9, p1, Lcom/sec/daliviews/views/Item;->mContainerId:I

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/sec/daliviews/views/Item;->setPosition(IIII)V

    goto :goto_4
.end method

.method public updatePositions(Lcom/sec/daliviews/dragAndDrop/DisplacedItem;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewCellX:I

    iput v0, p0, Lcom/sec/daliviews/views/Item;->mCellX:I

    iget v0, p1, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewCellY:I

    iput v0, p0, Lcom/sec/daliviews/views/Item;->mCellY:I

    iget v0, p1, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewPos:I

    iput v0, p0, Lcom/sec/daliviews/views/Item;->mCustomPos:I

    iput v0, p0, Lcom/sec/daliviews/views/Item;->mPos:I

    iget v0, p1, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewContainerDbId:I

    iput v0, p0, Lcom/sec/daliviews/views/Item;->mCustomContainerId:I

    iput v0, p0, Lcom/sec/daliviews/views/Item;->mContainerId:I

    goto :goto_0
.end method
