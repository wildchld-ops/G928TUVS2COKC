.class public Lcom/sec/daliviews/views/NativeViewBase$Policy;
.super Ljava/lang/Object;
.source "NativeViewBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/daliviews/views/NativeViewBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Policy"
.end annotation


# instance fields
.field protected mAcceptDrop:Z

.field protected mAutoscrollOnDragToEdge:Z

.field protected mDragEventInterest:I

.field protected mEditable:Z

.field protected mRemovable:Z

.field protected mResizable:Z

.field protected mRotatable:Z


# direct methods
.method protected constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/sec/daliviews/views/NativeViewBase$Policy;->mAcceptDrop:Z

    iput-boolean v0, p0, Lcom/sec/daliviews/views/NativeViewBase$Policy;->mEditable:Z

    iput-boolean v0, p0, Lcom/sec/daliviews/views/NativeViewBase$Policy;->mRemovable:Z

    iput-boolean v0, p0, Lcom/sec/daliviews/views/NativeViewBase$Policy;->mResizable:Z

    iput-boolean v0, p0, Lcom/sec/daliviews/views/NativeViewBase$Policy;->mRotatable:Z

    iput v1, p0, Lcom/sec/daliviews/views/NativeViewBase$Policy;->mDragEventInterest:I

    iput-boolean v1, p0, Lcom/sec/daliviews/views/NativeViewBase$Policy;->mAutoscrollOnDragToEdge:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/sec/daliviews/views/NativeViewBase$Policy;->mAcceptDrop:Z

    iput-boolean v2, p0, Lcom/sec/daliviews/views/NativeViewBase$Policy;->mEditable:Z

    iput-boolean v2, p0, Lcom/sec/daliviews/views/NativeViewBase$Policy;->mRemovable:Z

    iput-boolean v2, p0, Lcom/sec/daliviews/views/NativeViewBase$Policy;->mResizable:Z

    iput-boolean v2, p0, Lcom/sec/daliviews/views/NativeViewBase$Policy;->mRotatable:Z

    iput v3, p0, Lcom/sec/daliviews/views/NativeViewBase$Policy;->mDragEventInterest:I

    iput-boolean v3, p0, Lcom/sec/daliviews/views/NativeViewBase$Policy;->mAutoscrollOnDragToEdge:Z

    sget-object v1, Lcom/sec/daliviews/R$styleable;->NativeViewBase_Policy:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/sec/daliviews/R$styleable;->NativeViewBase_Policy_accept_drop:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/daliviews/views/NativeViewBase$Policy;->mAcceptDrop:Z

    sget v1, Lcom/sec/daliviews/R$styleable;->NativeViewBase_Policy_editable:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/daliviews/views/NativeViewBase$Policy;->mEditable:Z

    sget v1, Lcom/sec/daliviews/R$styleable;->NativeViewBase_Policy_removable:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/daliviews/views/NativeViewBase$Policy;->mRemovable:Z

    sget v1, Lcom/sec/daliviews/R$styleable;->NativeViewBase_Policy_resizable:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/daliviews/views/NativeViewBase$Policy;->mResizable:Z

    sget v1, Lcom/sec/daliviews/R$styleable;->NativeViewBase_Policy_rotatable:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/daliviews/views/NativeViewBase$Policy;->mRotatable:Z

    sget v1, Lcom/sec/daliviews/R$styleable;->NativeViewBase_Policy_drag_event_interest:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/sec/daliviews/views/NativeViewBase$Policy;->mDragEventInterest:I

    sget v1, Lcom/sec/daliviews/R$styleable;->NativeViewBase_Policy_autoscroll_on_drag_to_edge:I

    iget-boolean v2, p0, Lcom/sec/daliviews/views/NativeViewBase$Policy;->mAutoscrollOnDragToEdge:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/daliviews/views/NativeViewBase$Policy;->mAutoscrollOnDragToEdge:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private native initNative(JLjava/lang/String;ZZZZZIZ)V
.end method

.method private initParams(ZZZZZIZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/daliviews/views/NativeViewBase$Policy;->mAcceptDrop:Z

    iput-boolean p2, p0, Lcom/sec/daliviews/views/NativeViewBase$Policy;->mEditable:Z

    iput-boolean p3, p0, Lcom/sec/daliviews/views/NativeViewBase$Policy;->mRemovable:Z

    iput-boolean p4, p0, Lcom/sec/daliviews/views/NativeViewBase$Policy;->mResizable:Z

    iput-boolean p5, p0, Lcom/sec/daliviews/views/NativeViewBase$Policy;->mRotatable:Z

    iput p6, p0, Lcom/sec/daliviews/views/NativeViewBase$Policy;->mDragEventInterest:I

    iput-boolean p7, p0, Lcom/sec/daliviews/views/NativeViewBase$Policy;->mAutoscrollOnDragToEdge:Z

    return-void
.end method


# virtual methods
.method protected native create()J
.end method

.method createPeer()J
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase$Policy;->create()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/daliviews/views/NativeViewBase$Policy;->init(J)V

    return-wide v0
.end method

.method protected init(J)V
    .locals 13

    const-class v0, Lcom/sec/daliviews/views/NativeViewBase$Policy;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/sec/daliviews/views/NativeViewBase$Policy;->mAcceptDrop:Z

    iget-boolean v6, p0, Lcom/sec/daliviews/views/NativeViewBase$Policy;->mEditable:Z

    iget-boolean v7, p0, Lcom/sec/daliviews/views/NativeViewBase$Policy;->mRemovable:Z

    iget-boolean v8, p0, Lcom/sec/daliviews/views/NativeViewBase$Policy;->mResizable:Z

    iget-boolean v9, p0, Lcom/sec/daliviews/views/NativeViewBase$Policy;->mRotatable:Z

    iget v10, p0, Lcom/sec/daliviews/views/NativeViewBase$Policy;->mDragEventInterest:I

    iget-boolean v11, p0, Lcom/sec/daliviews/views/NativeViewBase$Policy;->mAutoscrollOnDragToEdge:Z

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v1 .. v11}, Lcom/sec/daliviews/views/NativeViewBase$Policy;->initNative(JLjava/lang/String;ZZZZZIZ)V

    return-void
.end method
