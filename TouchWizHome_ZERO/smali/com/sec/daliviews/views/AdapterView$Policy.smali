.class public Lcom/sec/daliviews/views/AdapterView$Policy;
.super Lcom/sec/daliviews/views/ContainerViewBase$Policy;
.source "AdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/daliviews/views/AdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Policy"
.end annotation


# instance fields
.field protected mBufferZoneSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/daliviews/views/ContainerViewBase$Policy;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/daliviews/views/AdapterView$Policy;->mBufferZoneSize:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/views/ContainerViewBase$Policy;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v2, p0, Lcom/sec/daliviews/views/AdapterView$Policy;->mBufferZoneSize:I

    sget-object v1, Lcom/sec/daliviews/R$styleable;->AdapterView_Policy:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/sec/daliviews/R$styleable;->AdapterView_Policy_bufferZone_size:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/sec/daliviews/views/AdapterView$Policy;->mBufferZoneSize:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private native initNative(JLjava/lang/String;I)V
.end method

.method private initParams(I)V
    .locals 0

    iput p1, p0, Lcom/sec/daliviews/views/AdapterView$Policy;->mBufferZoneSize:I

    return-void
.end method


# virtual methods
.method protected native create()J
.end method

.method protected init(J)V
    .locals 5

    invoke-super {p0, p1, p2}, Lcom/sec/daliviews/views/ContainerViewBase$Policy;->init(J)V

    const-class v1, Lcom/sec/daliviews/views/AdapterView$Policy;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sec/daliviews/views/AdapterView$Policy;->mBufferZoneSize:I

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sec/daliviews/views/AdapterView$Policy;->initNative(JLjava/lang/String;I)V

    return-void
.end method

.method public isEditable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/daliviews/views/AdapterView$Policy;->mEditable:Z

    return v0
.end method

.method public setEditable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/daliviews/views/AdapterView$Policy;->mEditable:Z

    return-void
.end method
