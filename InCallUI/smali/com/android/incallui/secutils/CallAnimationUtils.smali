.class public Lcom/android/incallui/secutils/CallAnimationUtils;
.super Ljava/lang/Object;
.source "CallAnimationUtils.java"


# direct methods
.method public static getAbsolutePositionLeft(Landroid/view/View;)I
    .locals 2

    const/4 v1, 0x2

    new-array v0, v1, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v1, v0, v1

    return v1
.end method

.method public static getAbsolutePositionTop(Landroid/view/View;)I
    .locals 2

    const/4 v1, 0x2

    new-array v0, v1, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x1

    aget v1, v0, v1

    return v1
.end method
