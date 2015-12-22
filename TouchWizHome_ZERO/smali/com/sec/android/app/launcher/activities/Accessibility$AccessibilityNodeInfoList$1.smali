.class final Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityNodeInfoList$1;
.super Ljava/lang/Object;
.source "Accessibility.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityNodeInfoList;->addItemListToNodeInfo(Ljava/util/List;Landroid/graphics/Rect;Landroid/view/accessibility/AccessibilityNodeInfo;ILandroid/util/SparseIntArray;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sec/daliviews/views/Item;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/Item;)I
    .locals 9

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v3

    if-eqz v1, :cond_0

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {v1}, Lcom/sec/daliviews/views/NativeViewBase;->getScreenBoundingRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v3}, Lcom/sec/daliviews/views/NativeViewBase;->getScreenBoundingRect()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    iget v7, v0, Landroid/graphics/Rect;->top:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    if-gt v7, v8, :cond_2

    iget v7, v0, Landroid/graphics/Rect;->top:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    if-ne v7, v8, :cond_3

    iget v7, v0, Landroid/graphics/Rect;->left:I

    iget v8, v2, Landroid/graphics/Rect;->left:I

    if-le v7, v8, :cond_3

    :cond_2
    move v4, v5

    goto :goto_0

    :cond_3
    iget v7, v0, Landroid/graphics/Rect;->top:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    if-lt v7, v8, :cond_4

    iget v7, v0, Landroid/graphics/Rect;->top:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    if-ne v7, v8, :cond_5

    iget v7, v0, Landroid/graphics/Rect;->left:I

    iget v8, v2, Landroid/graphics/Rect;->left:I

    if-ge v7, v8, :cond_5

    :cond_4
    move v4, v6

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    if-gt v7, v8, :cond_6

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    if-ne v7, v8, :cond_7

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    if-le v7, v8, :cond_7

    :cond_6
    move v4, v6

    goto :goto_0

    :cond_7
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    if-lt v6, v7, :cond_8

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    if-ne v6, v7, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    if-ge v6, v7, :cond_0

    :cond_8
    move v4, v5

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/sec/daliviews/views/Item;

    check-cast p2, Lcom/sec/daliviews/views/Item;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityNodeInfoList$1;->compare(Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/Item;)I

    move-result v0

    return v0
.end method
