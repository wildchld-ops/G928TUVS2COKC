.class public Lcom/samsung/android/visualeffect/lock/common/dummyBGView;
.super Landroid/widget/ImageView;
.source "dummyBGView.java"

# interfaces
.implements Lcom/samsung/android/visualeffect/IEffectView;


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-string v0, "dummy"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/dummyBGView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "dummy"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/dummyBGView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "dummy"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/dummyBGView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string v0, "dummy"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/dummyBGView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-string v0, "dummy"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/dummyBGView;->TAG:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/visualeffect/lock/common/dummyBGView;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clearScreen()V
    .locals 0

    return-void
.end method

.method public handleCustomEvent(ILjava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<**>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/lock/common/dummyBGView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const-string v0, "Bitmap"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/lock/common/dummyBGView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/dummyBGView;->TAG:Ljava/lang/String;

    const-string v1, "touch down"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public init(Lcom/samsung/android/visualeffect/EffectDataObj;)V
    .locals 0

    return-void
.end method

.method public reInit(Lcom/samsung/android/visualeffect/EffectDataObj;)V
    .locals 0

    return-void
.end method

.method public removeListener()V
    .locals 0

    return-void
.end method

.method public setListener(Lcom/samsung/android/visualeffect/IEffectListener;)V
    .locals 0

    return-void
.end method
