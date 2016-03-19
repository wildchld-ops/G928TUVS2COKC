.class public final Lcom/ime/framework/util/ViewLayoutUtils;
.super Ljava/lang/Object;
.source "ViewLayoutUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newLayoutParam(Landroid/view/ViewGroup;II)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 3

    instance-of v0, p0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_1
    if-nez p0, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "placer is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "placer is neither FrameLayout nor RelativeLayout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static placeViewAt(Landroid/view/View;IIIIZ)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v2

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->getWindowHeight()I

    move-result v2

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput p4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-nez p5, :cond_2

    invoke-virtual {v1, p1, p2, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sub-int v3, v2, p1

    sub-int/2addr v3, p3

    invoke-virtual {v1, v4, p2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method
