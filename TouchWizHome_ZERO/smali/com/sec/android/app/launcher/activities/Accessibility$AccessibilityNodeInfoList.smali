.class public Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityNodeInfoList;
.super Ljava/lang/Object;
.source "Accessibility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/Accessibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccessibilityNodeInfoList"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$600(Ljava/util/List;Landroid/graphics/Rect;Landroid/view/accessibility/AccessibilityNodeInfo;ILandroid/util/SparseIntArray;Landroid/view/View;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityNodeInfoList;->addItemListToNodeInfo(Ljava/util/List;Landroid/graphics/Rect;Landroid/view/accessibility/AccessibilityNodeInfo;ILandroid/util/SparseIntArray;Landroid/view/View;)V

    return-void
.end method

.method private static addItemListToNodeInfo(Ljava/util/List;Landroid/graphics/Rect;Landroid/view/accessibility/AccessibilityNodeInfo;ILandroid/util/SparseIntArray;Landroid/view/View;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;",
            "Landroid/graphics/Rect;",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "I",
            "Landroid/util/SparseIntArray;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    :try_start_0
    new-instance v4, Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityNodeInfoList$1;

    invoke-direct {v4}, Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityNodeInfoList$1;-><init>()V

    invoke-static {p0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/Item;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/sec/daliviews/views/NativeViewBase;->getScreenBoundingRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/sec/daliviews/views/NativeViewBase;->isOnScreen()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/sec/daliviews/views/NativeViewBase;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3, p2, p3, p4, p5}, Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityNodeInfoList;->addItemToNodeInfo(Ljava/lang/Object;Landroid/view/accessibility/AccessibilityNodeInfo;ILandroid/util/SparseIntArray;Landroid/view/View;)V

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static addItemListToNodeInfo(Ljava/util/List;Landroid/view/accessibility/AccessibilityNodeInfo;ILandroid/util/SparseIntArray;Landroid/view/View;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "I",
            "Landroid/util/SparseIntArray;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/launcher/utils/Utils;->getScreenDimensions(Landroid/app/Activity;)Landroid/graphics/Point;

    move-result-object v6

    new-instance v1, Landroid/graphics/Rect;

    iget v0, v6, Landroid/graphics/Point;->x:I

    iget v2, v6, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v3, v3, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityNodeInfoList;->addItemListToNodeInfo(Ljava/util/List;Landroid/graphics/Rect;Landroid/view/accessibility/AccessibilityNodeInfo;ILandroid/util/SparseIntArray;Landroid/view/View;)V

    return-void
.end method

.method public static addItemToNodeInfo(Ljava/lang/Object;Landroid/view/accessibility/AccessibilityNodeInfo;ILandroid/util/SparseIntArray;Landroid/view/View;)V
    .locals 1

    invoke-static {p0}, Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityIdGenerator;->getOrGenerateId(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p3, v0, p2}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {p1, p4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    return-void
.end method
