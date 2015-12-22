.class public Lcom/sec/daliviews/views/PageView;
.super Lcom/sec/daliviews/views/AdapterView;
.source "PageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/daliviews/views/PageView$DynamicPageItem;,
        Lcom/sec/daliviews/views/PageView$OnEmptyPageDropListener;
    }
.end annotation


# instance fields
.field private mDynamicItem:Lcom/sec/daliviews/views/PageView$DynamicPageItem;

.field private mListener:Lcom/sec/daliviews/views/PageView$OnEmptyPageDropListener;

.field private mMiniPage:Lcom/sec/daliviews/views/MiniPageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/daliviews/views/AdapterView;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/views/PageView;->mDynamicItem:Lcom/sec/daliviews/views/PageView$DynamicPageItem;

    iput-object v0, p0, Lcom/sec/daliviews/views/PageView;->mMiniPage:Lcom/sec/daliviews/views/MiniPageView;

    iput-object v0, p0, Lcom/sec/daliviews/views/PageView;->mListener:Lcom/sec/daliviews/views/PageView$OnEmptyPageDropListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/views/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/sec/daliviews/views/PageView;->mDynamicItem:Lcom/sec/daliviews/views/PageView$DynamicPageItem;

    iput-object v1, p0, Lcom/sec/daliviews/views/PageView;->mMiniPage:Lcom/sec/daliviews/views/MiniPageView;

    iput-object v1, p0, Lcom/sec/daliviews/views/PageView;->mListener:Lcom/sec/daliviews/views/PageView$OnEmptyPageDropListener;

    sget-object v1, Lcom/sec/daliviews/R$styleable;->PageView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/sec/daliviews/R$styleable;->PageView_page_flip_trigger:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/daliviews/views/PageView;->setPageFlipTrigger(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private cleanupJava()V
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/PageView;->mDynamicItem:Lcom/sec/daliviews/views/PageView$DynamicPageItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/PageView;->mDynamicItem:Lcom/sec/daliviews/views/PageView$DynamicPageItem;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/PageView$DynamicPageItem;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/daliviews/views/PageView;->mDynamicItem:Lcom/sec/daliviews/views/PageView$DynamicPageItem;

    :cond_0
    return-void
.end method

.method private native configureHighlight(JIIIIFLjava/lang/String;)V
.end method

.method private native deleteEmptyPageMessage(J)V
.end method

.method private native getHeader(J)Lcom/sec/daliviews/views/NativeViewBase;
.end method

.method private native getIsPageShadowEnabled(J)Z
.end method

.method private native hasMiniPageView(J)Z
.end method

.method private native initialiseMiniPageView(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native isNoBackgroundPage(J)Z
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/daliviews/views/PageView;->mDynamicItem:Lcom/sec/daliviews/views/PageView$DynamicPageItem;

    iput-object v0, p0, Lcom/sec/daliviews/views/PageView;->mMiniPage:Lcom/sec/daliviews/views/MiniPageView;

    iput-object v0, p0, Lcom/sec/daliviews/views/PageView;->mListener:Lcom/sec/daliviews/views/PageView$OnEmptyPageDropListener;

    return-void
.end method

.method private native setAccessibilityMode(JZ)V
.end method

.method private native setHeader(JJ)V
.end method

.method private native setHeaderVisible(JI)V
.end method

.method private native setIsDefaultPage(JZ)V
.end method

.method private native setIsDragModeNewPage(JZ)V
.end method

.method private native setIsNewPageMockup(JZ)V
.end method

.method private native setIsNoBackgroundPage(JZ)V
.end method

.method private native setNearEdgeThreshold(JF)V
.end method

.method private native setPageFlipDelay(JF)V
.end method

.method private native setPageFlipDirection(JZZ)V
.end method

.method private native setPageFlipEnable(JZ)V
.end method

.method private native setPageFlipTime(JF)V
.end method

.method private native setPageFlipTrigger(JI)V
.end method

.method private native setPageIndicatorDrawable(JLandroid/graphics/Bitmap;)V
.end method

.method private native setPageShadowEnabled(JZ)V
.end method

.method private native showEmptyPageMessage(JJI)V
.end method

.method private native updateBackground(JLjava/lang/String;)V
.end method


# virtual methods
.method public clone()Lcom/sec/daliviews/views/NativeViewBase;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/sec/daliviews/views/AdapterView;->clone()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/PageView;

    invoke-direct {v0}, Lcom/sec/daliviews/views/PageView;->reset()V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageView;->clone()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    return-object v0
.end method

.method public configureHighlight(IIIIFLjava/lang/String;)V
    .locals 10

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageView;->getmNPeer()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/sec/daliviews/views/PageView;->configureHighlight(JIIIIFLjava/lang/String;)V

    return-void
.end method

.method protected native create()J
.end method

.method public createDynamicItem(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/PageView;->mDynamicItem:Lcom/sec/daliviews/views/PageView$DynamicPageItem;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/daliviews/views/PageView$DynamicPageItem;

    invoke-direct {v0, p1}, Lcom/sec/daliviews/views/PageView$DynamicPageItem;-><init>(I)V

    iput-object v0, p0, Lcom/sec/daliviews/views/PageView;->mDynamicItem:Lcom/sec/daliviews/views/PageView$DynamicPageItem;

    iget-object v0, p0, Lcom/sec/daliviews/views/PageView;->mDynamicItem:Lcom/sec/daliviews/views/PageView$DynamicPageItem;

    invoke-virtual {v0, p0}, Lcom/sec/daliviews/views/PageView$DynamicPageItem;->linkItemView(Lcom/sec/daliviews/views/NativeViewBase;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/daliviews/views/PageView;->mDynamicItem:Lcom/sec/daliviews/views/PageView$DynamicPageItem;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/PageView$DynamicPageItem;->init(I)V

    goto :goto_0
.end method

.method public deleteEmptyPageMessage()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageView;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/PageView;->deleteEmptyPageMessage(J)V

    return-void
.end method

.method public destroy()V
    .locals 0

    invoke-super {p0}, Lcom/sec/daliviews/views/AdapterView;->destroy()V

    invoke-direct {p0}, Lcom/sec/daliviews/views/PageView;->cleanupJava()V

    return-void
.end method

.method public getDynamicItem()Lcom/sec/daliviews/views/PageView$DynamicPageItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/PageView;->mDynamicItem:Lcom/sec/daliviews/views/PageView$DynamicPageItem;

    return-object v0
.end method

.method public getHeader()Lcom/sec/daliviews/views/NativeViewBase;
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageView;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/PageView;->getHeader(J)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    return-object v0
.end method

.method public getIsPageShadowEnabled()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageView;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/PageView;->getIsPageShadowEnabled(J)Z

    move-result v0

    return v0
.end method

.method public getMiniPage()Lcom/sec/daliviews/views/MiniPageView;
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/PageView;->mMiniPage:Lcom/sec/daliviews/views/MiniPageView;

    return-object v0
.end method

.method public hasMiniPageView()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageView;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/PageView;->hasMiniPageView(J)Z

    move-result v0

    return v0
.end method

.method public initialiseMiniPageView(Lcom/sec/daliviews/views/MiniPageView;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    iput-object p1, p0, Lcom/sec/daliviews/views/PageView;->mMiniPage:Lcom/sec/daliviews/views/MiniPageView;

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageView;->getmNPeer()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sec/daliviews/views/MiniPageView;->getPeer()J

    move-result-wide v4

    move-object v1, p0

    move-wide v6, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-direct/range {v1 .. v11}, Lcom/sec/daliviews/views/PageView;->initialiseMiniPageView(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isCloneable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDemoPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNoBackgroundPage()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageView;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/PageView;->isNoBackgroundPage(J)Z

    move-result v0

    return v0
.end method

.method public itemAddedToEmptyPage()V
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/PageView;->mListener:Lcom/sec/daliviews/views/PageView$OnEmptyPageDropListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/PageView;->mListener:Lcom/sec/daliviews/views/PageView$OnEmptyPageDropListener;

    invoke-interface {v0}, Lcom/sec/daliviews/views/PageView$OnEmptyPageDropListener;->onItemAddedToEmptyPage()V

    :cond_0
    return-void
.end method

.method protected resetPeer()V
    .locals 0

    invoke-super {p0}, Lcom/sec/daliviews/views/AdapterView;->resetPeer()V

    invoke-direct {p0}, Lcom/sec/daliviews/views/PageView;->cleanupJava()V

    return-void
.end method

.method public setAccessibilityMode(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageView;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/PageView;->setAccessibilityMode(JZ)V

    return-void
.end method

.method public setEmptyPageListener(Lcom/sec/daliviews/views/PageView$OnEmptyPageDropListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/views/PageView;->mListener:Lcom/sec/daliviews/views/PageView$OnEmptyPageDropListener;

    return-void
.end method

.method public setHeader(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageView;->getmNPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/views/PageView;->setHeader(JJ)V

    return-void
.end method

.method public setHeaderVisible(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageView;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/PageView;->setHeaderVisible(JI)V

    return-void
.end method

.method public setIsDefaultPage(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageView;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/PageView;->setIsDefaultPage(JZ)V

    return-void
.end method

.method public setIsDragModeNewPage(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageView;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/PageView;->setIsDragModeNewPage(JZ)V

    return-void
.end method

.method public setIsNewPageMockup(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageView;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/PageView;->setIsNewPageMockup(JZ)V

    return-void
.end method

.method public setIsNoBackgroundPage(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageView;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/PageView;->setIsNoBackgroundPage(JZ)V

    return-void
.end method

.method public setNearEdgeThreshold(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageView;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/PageView;->setNearEdgeThreshold(JF)V

    return-void
.end method

.method public setPageFlipDelay(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageView;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/PageView;->setPageFlipDelay(JF)V

    return-void
.end method

.method public setPageFlipDirection(ZZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageView;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sec/daliviews/views/PageView;->setPageFlipDirection(JZZ)V

    return-void
.end method

.method public setPageFlipEnable(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageView;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/PageView;->setPageFlipEnable(JZ)V

    return-void
.end method

.method public setPageFlipTime(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageView;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/PageView;->setPageFlipTime(JF)V

    return-void
.end method

.method public setPageFlipTrigger(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageView;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/PageView;->setPageFlipTrigger(JI)V

    return-void
.end method

.method public setPageIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageView;->getmNPeer()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/sec/daliviews/utils/BitmapUtils;->convertToBitmap(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/daliviews/views/PageView;->setPageIndicatorDrawable(JLandroid/graphics/Bitmap;)V

    return-void
.end method

.method public setPageShadowEnabled(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageView;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/PageView;->setPageShadowEnabled(JZ)V

    return-void
.end method

.method public showEmptyPageMessage(Lcom/sec/daliviews/views/TextView;I)V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageView;->getmNPeer()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sec/daliviews/views/TextView;->getPeer()J

    move-result-wide v4

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/sec/daliviews/views/PageView;->showEmptyPageMessage(JJI)V

    return-void
.end method

.method public updateBackground(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageView;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/PageView;->updateBackground(JLjava/lang/String;)V

    return-void
.end method
