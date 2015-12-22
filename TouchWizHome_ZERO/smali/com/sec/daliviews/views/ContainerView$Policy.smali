.class public Lcom/sec/daliviews/views/ContainerView$Policy;
.super Lcom/sec/daliviews/views/ContainerViewBase$Policy;
.source "ContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/daliviews/views/ContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Policy"
.end annotation


# instance fields
.field protected mAutoExpending:Z

.field protected mAutoSwitchLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/daliviews/views/ContainerViewBase$Policy;-><init>()V

    iput-boolean v0, p0, Lcom/sec/daliviews/views/ContainerView$Policy;->mAutoExpending:Z

    iput-boolean v0, p0, Lcom/sec/daliviews/views/ContainerView$Policy;->mAutoSwitchLayout:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/views/ContainerViewBase$Policy;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v2, p0, Lcom/sec/daliviews/views/ContainerView$Policy;->mAutoExpending:Z

    iput-boolean v2, p0, Lcom/sec/daliviews/views/ContainerView$Policy;->mAutoSwitchLayout:Z

    sget-object v1, Lcom/sec/daliviews/R$styleable;->ContainerViewBase_Policy:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/sec/daliviews/R$styleable;->ContainerView_Policy_auto_expending:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/daliviews/views/ContainerView$Policy;->mAutoExpending:Z

    sget v1, Lcom/sec/daliviews/R$styleable;->ContainerView_Policy_auto_switchLayout:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/daliviews/views/ContainerView$Policy;->mAutoSwitchLayout:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private native initNative(JLjava/lang/String;ZZ)V
.end method

.method private initParams(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/daliviews/views/ContainerView$Policy;->mAutoExpending:Z

    iput-boolean p2, p0, Lcom/sec/daliviews/views/ContainerView$Policy;->mAutoSwitchLayout:Z

    return-void
.end method


# virtual methods
.method protected native create()J
.end method

.method protected init(J)V
    .locals 7

    invoke-super {p0, p1, p2}, Lcom/sec/daliviews/views/ContainerViewBase$Policy;->init(J)V

    const-class v0, Lcom/sec/daliviews/views/ContainerView$Policy;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/sec/daliviews/views/ContainerView$Policy;->mAutoExpending:Z

    iget-boolean v6, p0, Lcom/sec/daliviews/views/ContainerView$Policy;->mAutoSwitchLayout:Z

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/sec/daliviews/views/ContainerView$Policy;->initNative(JLjava/lang/String;ZZ)V

    return-void
.end method
