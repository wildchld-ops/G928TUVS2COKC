.class public Lcom/sec/daliviews/views/ModedView;
.super Lcom/sec/daliviews/views/FixedContainer;
.source "ModedView.java"

# interfaces
.implements Lcom/sec/daliviews/views/IModedView;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mModes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/daliviews/views/ModedView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mSupportedModes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/daliviews/views/ModedView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/daliviews/views/ModedView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/daliviews/views/ModedView;->mModes:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/daliviews/views/FixedContainer;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/daliviews/views/ModedView;->mSupportedModes:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/views/FixedContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-array v1, v2, [I

    iput-object v1, p0, Lcom/sec/daliviews/views/ModedView;->mSupportedModes:[I

    sget-object v1, Lcom/sec/daliviews/R$styleable;->ModedView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/sec/daliviews/R$styleable;->ModedView_mode_grid_x:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    sget v1, Lcom/sec/daliviews/R$styleable;->ModedView_mode_grid_y:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    sget v1, Lcom/sec/daliviews/R$styleable;->ModedView_mode_orientation:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ModedView;->getmNPeer()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ModedView;->getModedViewType()I

    move-result v4

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ModedView;->getIsNativeModes()Z

    move-result v5

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/sec/daliviews/views/ModedView;->initParams(JIZIII)V

    return-void
.end method

.method private static native addModes(IJ)V
.end method

.method public static addModes(ILcom/sec/daliviews/views/ModedView;)V
    .locals 2

    sget-object v0, Lcom/sec/daliviews/views/ModedView;->mModes:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/sec/daliviews/views/ModedView;->getPeer()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/sec/daliviews/views/ModedView;->addModes(IJ)V

    return-void
.end method

.method private applyTextParams(Lcom/sec/daliviews/views/FixedContainer;Lcom/sec/daliviews/views/FixedContainer;)V
    .locals 6

    invoke-virtual {p1}, Lcom/sec/daliviews/views/FixedContainer;->getViews()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/daliviews/views/NativeViewBase;

    instance-of v5, v3, Lcom/sec/daliviews/views/TextView;

    if-eqz v5, :cond_3

    move-object v2, v3

    check-cast v2, Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v3}, Lcom/sec/daliviews/views/NativeViewBase;->getId()I

    move-result v5

    invoke-virtual {p2, v5}, Lcom/sec/daliviews/views/FixedContainer;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sec/daliviews/views/NativeViewBase;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2

    check-cast v1, Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v2, v1}, Lcom/sec/daliviews/views/TextView;->copyTextParams(Lcom/sec/daliviews/views/TextView;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    goto :goto_0

    :cond_3
    instance-of v5, v3, Lcom/sec/daliviews/views/FixedContainer;

    if-eqz v5, :cond_2

    check-cast v3, Lcom/sec/daliviews/views/FixedContainer;

    invoke-direct {p0, v3, p2}, Lcom/sec/daliviews/views/ModedView;->applyTextParams(Lcom/sec/daliviews/views/FixedContainer;Lcom/sec/daliviews/views/FixedContainer;)V

    goto :goto_0
.end method

.method private native changeMode(JI)V
.end method

.method private static native clearModes()V
.end method

.method public static deletesmode()V
    .locals 2

    sget-object v0, Lcom/sec/daliviews/views/ModedView;->TAG:Ljava/lang/String;

    const-string v1, "deletesmode()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/daliviews/views/ModedView;->mModes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-static {}, Lcom/sec/daliviews/views/ModedView;->clearModes()V

    return-void
.end method

.method private native findChildViewById(JIIIII)Lcom/sec/daliviews/views/NativeViewBase;
.end method

.method private native findCurrentModeRefView(J)Lcom/sec/daliviews/views/NativeViewBase;
.end method

.method private native getCurrentMode(J)I
.end method

.method public static getModes()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/daliviews/views/ModedView;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/sec/daliviews/views/ModedView;->mModes:Ljava/util/HashMap;

    return-object v0
.end method

.method private native initParams(JIZIII)V
.end method

.method private native setSupportedModes(J[I)V
.end method

.method private native updateMode(J)V
.end method


# virtual methods
.method public changeMode(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ModedView;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/ModedView;->changeMode(JI)V

    return-void
.end method

.method protected native create()J
.end method

.method public destroy()V
    .locals 0

    invoke-super {p0}, Lcom/sec/daliviews/views/FixedContainer;->destroy()V

    return-void
.end method

.method public findChildViewById(IIIII)Lcom/sec/daliviews/views/NativeViewBase;
    .locals 9

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ModedView;->getPeer()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/sec/daliviews/views/ModedView;->findChildViewById(JIIIII)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    return-object v0
.end method

.method public findCurrentModeRefView()Lcom/sec/daliviews/views/ModedView;
    .locals 4

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ModedView;->getmNPeer()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/sec/daliviews/views/ModedView;->findCurrentModeRefView(J)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    instance-of v1, v0, Lcom/sec/daliviews/views/ModedView;

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/daliviews/views/ModedView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The view returned is not ModedView. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/sec/daliviews/views/ModedView;

    goto :goto_0
.end method

.method public getCurrentMode()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ModedView;->getIsNativeModes()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ModedView;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/ModedView;->getCurrentMode(J)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getIsNativeModes()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getModedViewType()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getSupportedModes()[I
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/ModedView;->mSupportedModes:[I

    return-object v0
.end method

.method public isCloneable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onModeChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ModedView;->updateTextParams()V

    return-void
.end method

.method public setSupportedModes([I)V
    .locals 3

    iput-object p1, p0, Lcom/sec/daliviews/views/ModedView;->mSupportedModes:[I

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ModedView;->getmNPeer()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/daliviews/views/ModedView;->mSupportedModes:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/daliviews/views/ModedView;->setSupportedModes(J[I)V

    return-void
.end method

.method public updateMode()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ModedView;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/ModedView;->updateMode(J)V

    return-void
.end method

.method public updateTextParams()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ModedView;->hasModes()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/daliviews/views/ModedView;->getIsNativeModes()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ModedView;->findCurrentModeRefView()Lcom/sec/daliviews/views/ModedView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p0, v0}, Lcom/sec/daliviews/views/ModedView;->applyTextParams(Lcom/sec/daliviews/views/FixedContainer;Lcom/sec/daliviews/views/FixedContainer;)V

    goto :goto_0
.end method
