.class public abstract Lcom/sec/daliviews/layouts/LayoutBase;
.super Lcom/sec/daliviews/views/PeerBase;
.source "LayoutBase.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/daliviews/layouts/LayoutBase$OnLayoutEventListener;,
        Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;
    }
.end annotation


# static fields
.field public static final HORIZONTAL_SCROLLING_THRESHOLD_INDICATION:I = 0x7

.field public static final PAGE_MOVE_STARTED:I = 0x8

.field public static final PAGE_SNAP_STARTED:I = 0x9

.field public static final SCROLLING_COMPLETED:I = 0x3

.field public static final SCROLLING_FINISHED:I = 0x4

.field public static final SCROLLING_PRE_STARTED:I = 0x1

.field public static final SCROLLING_STARTED:I = 0x2

.field public static final VERTICAL_SCROLLING_DOWN_STARTED:I = 0x6

.field public static final VERTICAL_SCROLLING_UP_STARTED:I = 0x5


# instance fields
.field private mAnimateAddView:Z

.field private mAnimateDrop:Z

.field private mAnimatePositioning:Z

.field private mAnimateResizing:Z

.field private mHandler:Landroid/os/Handler;

.field private mLayoutEventListener:Lcom/sec/daliviews/layouts/LayoutBase$OnLayoutEventListener;


# direct methods
.method protected constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/daliviews/views/PeerBase;-><init>()V

    iput-object v2, p0, Lcom/sec/daliviews/layouts/LayoutBase;->mLayoutEventListener:Lcom/sec/daliviews/layouts/LayoutBase$OnLayoutEventListener;

    iput-object v2, p0, Lcom/sec/daliviews/layouts/LayoutBase;->mHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/sec/daliviews/layouts/LayoutBase;->mAnimatePositioning:Z

    iput-boolean v0, p0, Lcom/sec/daliviews/layouts/LayoutBase;->mAnimateResizing:Z

    iput-boolean v0, p0, Lcom/sec/daliviews/layouts/LayoutBase;->mAnimateAddView:Z

    iput-boolean v1, p0, Lcom/sec/daliviews/layouts/LayoutBase;->mAnimateDrop:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/sec/daliviews/views/PeerBase;-><init>()V

    iput-object v1, p0, Lcom/sec/daliviews/layouts/LayoutBase;->mLayoutEventListener:Lcom/sec/daliviews/layouts/LayoutBase$OnLayoutEventListener;

    iput-object v1, p0, Lcom/sec/daliviews/layouts/LayoutBase;->mHandler:Landroid/os/Handler;

    iput-boolean v3, p0, Lcom/sec/daliviews/layouts/LayoutBase;->mAnimatePositioning:Z

    iput-boolean v2, p0, Lcom/sec/daliviews/layouts/LayoutBase;->mAnimateResizing:Z

    iput-boolean v2, p0, Lcom/sec/daliviews/layouts/LayoutBase;->mAnimateAddView:Z

    iput-boolean v3, p0, Lcom/sec/daliviews/layouts/LayoutBase;->mAnimateDrop:Z

    sget-object v1, Lcom/sec/daliviews/R$styleable;->LayoutBase:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/sec/daliviews/R$styleable;->LayoutBase_animatePositioning:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/daliviews/layouts/LayoutBase;->mAnimatePositioning:Z

    sget v1, Lcom/sec/daliviews/R$styleable;->LayoutBase_animateDrop:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/daliviews/layouts/LayoutBase;->mAnimateDrop:Z

    sget v1, Lcom/sec/daliviews/R$styleable;->LayoutBase_animateResizing:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/daliviews/layouts/LayoutBase;->mAnimateResizing:Z

    sget v1, Lcom/sec/daliviews/R$styleable;->LayoutBase_animateAddingView:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/daliviews/layouts/LayoutBase;->mAnimateAddView:Z

    sget v1, Lcom/sec/daliviews/R$styleable;->LayoutBase_animateDuration:I

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    sget v1, Lcom/sec/daliviews/R$styleable;->LayoutBase_enableDancingIcons:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/LayoutBase;->getmNPeer()J

    move-result-wide v2

    iget-boolean v4, p0, Lcom/sec/daliviews/layouts/LayoutBase;->mAnimatePositioning:Z

    iget-boolean v5, p0, Lcom/sec/daliviews/layouts/LayoutBase;->mAnimateResizing:Z

    iget-boolean v6, p0, Lcom/sec/daliviews/layouts/LayoutBase;->mAnimateAddView:Z

    iget-boolean v7, p0, Lcom/sec/daliviews/layouts/LayoutBase;->mAnimateDrop:Z

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/sec/daliviews/layouts/LayoutBase;->initParams(JZZZZFZ)V

    return-void
.end method

.method protected constructor <init>(ZZZZF)V
    .locals 10

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v9, 0x1

    invoke-direct {p0}, Lcom/sec/daliviews/views/PeerBase;-><init>()V

    iput-object v1, p0, Lcom/sec/daliviews/layouts/LayoutBase;->mLayoutEventListener:Lcom/sec/daliviews/layouts/LayoutBase$OnLayoutEventListener;

    iput-object v1, p0, Lcom/sec/daliviews/layouts/LayoutBase;->mHandler:Landroid/os/Handler;

    iput-boolean v9, p0, Lcom/sec/daliviews/layouts/LayoutBase;->mAnimatePositioning:Z

    iput-boolean v0, p0, Lcom/sec/daliviews/layouts/LayoutBase;->mAnimateResizing:Z

    iput-boolean v0, p0, Lcom/sec/daliviews/layouts/LayoutBase;->mAnimateAddView:Z

    iput-boolean v9, p0, Lcom/sec/daliviews/layouts/LayoutBase;->mAnimateDrop:Z

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/LayoutBase;->getmNPeer()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v1 .. v9}, Lcom/sec/daliviews/layouts/LayoutBase;->initParams(JZZZZFZ)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/daliviews/layouts/LayoutBase;)Lcom/sec/daliviews/layouts/LayoutBase$OnLayoutEventListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/layouts/LayoutBase;->mLayoutEventListener:Lcom/sec/daliviews/layouts/LayoutBase$OnLayoutEventListener;

    return-object v0
.end method

.method private native clone(JLcom/sec/daliviews/layouts/LayoutBase;)J
.end method

.method private native initParams(JZZZZFZ)V
.end method

.method private native layoutViews(J)V
.end method

.method private native setAnimateAddingView(JZ)V
.end method

.method private native setAnimateDrop(JZ)V
.end method

.method private native setAnimatePositioning(JZ)V
.end method

.method private native setAnimateResizing(JZ)V
.end method

.method private native setAnimationDuration(JF)V
.end method

.method private native setClippingVisible(JZ)V
.end method

.method private native setDancingIcons(JZ)V
.end method

.method private native setGridGuideImagePath(JLjava/lang/String;)V
.end method

.method private native setScrollable(JZ)V
.end method


# virtual methods
.method protected OnLayoutEventCallback(II)V
    .locals 4

    iget-object v2, p0, Lcom/sec/daliviews/layouts/LayoutBase;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/sec/daliviews/layouts/LayoutBase;->mHandler:Landroid/os/Handler;

    :cond_0
    move v0, p1

    move v1, p2

    iget-object v2, p0, Lcom/sec/daliviews/layouts/LayoutBase;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sec/daliviews/layouts/LayoutBase$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/sec/daliviews/layouts/LayoutBase$1;-><init>(Lcom/sec/daliviews/layouts/LayoutBase;II)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public clone()Lcom/sec/daliviews/layouts/LayoutBase;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/layouts/LayoutBase;

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/LayoutBase;->getPeer()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, v0}, Lcom/sec/daliviews/layouts/LayoutBase;->clone(JLcom/sec/daliviews/layouts/LayoutBase;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sec/daliviews/layouts/LayoutBase;->setPeer(J)V

    invoke-static {v0}, Lcom/sec/daliviews/views/NativeApp;->registerPeerObject(Lcom/sec/daliviews/views/PeerBase;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/LayoutBase;->clone()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .locals 2

    invoke-super {p0}, Lcom/sec/daliviews/views/PeerBase;->destroy()V

    iget-object v0, p0, Lcom/sec/daliviews/layouts/LayoutBase;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/layouts/LayoutBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public getLayoutAnimated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/daliviews/layouts/LayoutBase;->mAnimatePositioning:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/daliviews/layouts/LayoutBase;->mAnimateResizing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/daliviews/layouts/LayoutBase;->mAnimateDrop:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public inflateAndAddPosition(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    return-void
.end method

.method public layoutViews()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/LayoutBase;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/layouts/LayoutBase;->layoutViews(J)V

    return-void
.end method

.method protected resetPeer()V
    .locals 2

    invoke-super {p0}, Lcom/sec/daliviews/views/PeerBase;->resetPeer()V

    iget-object v0, p0, Lcom/sec/daliviews/layouts/LayoutBase;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/layouts/LayoutBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setAnimateAddingView(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/sec/daliviews/layouts/LayoutBase;->mAnimateAddView:Z

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/LayoutBase;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/layouts/LayoutBase;->setAnimateAddingView(JZ)V

    return-void
.end method

.method public setAnimateDrop(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/sec/daliviews/layouts/LayoutBase;->mAnimateDrop:Z

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/LayoutBase;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/layouts/LayoutBase;->setAnimateDrop(JZ)V

    return-void
.end method

.method public setAnimatePositioning(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/sec/daliviews/layouts/LayoutBase;->mAnimatePositioning:Z

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/LayoutBase;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/layouts/LayoutBase;->setAnimatePositioning(JZ)V

    return-void
.end method

.method public setAnimateResizing(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/sec/daliviews/layouts/LayoutBase;->mAnimateResizing:Z

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/LayoutBase;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/layouts/LayoutBase;->setAnimateResizing(JZ)V

    return-void
.end method

.method public setAnimationDuration(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/LayoutBase;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/layouts/LayoutBase;->setAnimationDuration(JF)V

    return-void
.end method

.method public setClippingVisible(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/LayoutBase;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/layouts/LayoutBase;->setClippingVisible(JZ)V

    return-void
.end method

.method public setDancingIcons(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/LayoutBase;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/layouts/LayoutBase;->setDancingIcons(JZ)V

    return-void
.end method

.method public setGridGuideImagePath(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/LayoutBase;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/layouts/LayoutBase;->setGridGuideImagePath(JLjava/lang/String;)V

    return-void
.end method

.method public setOnLayoutEventListener(Lcom/sec/daliviews/layouts/LayoutBase$OnLayoutEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/layouts/LayoutBase;->mLayoutEventListener:Lcom/sec/daliviews/layouts/LayoutBase$OnLayoutEventListener;

    return-void
.end method

.method public setScrollBarVisible(Z)V
    .locals 0

    return-void
.end method

.method public setScrollable(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/LayoutBase;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/layouts/LayoutBase;->setScrollable(JZ)V

    return-void
.end method
