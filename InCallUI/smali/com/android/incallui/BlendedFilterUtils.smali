.class public Lcom/android/incallui/BlendedFilterUtils;
.super Ljava/lang/Object;
.source "BlendedFilterUtils.java"


# direct methods
.method public static generateFilterSet(IIFF)Landroid/graphics/ImageFilterSet;
    .locals 12

    const/16 v11, 0x66

    const/16 v3, 0x34

    const/4 v8, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    new-instance v10, Landroid/graphics/ImageFilterSet;

    invoke-direct {v10}, Landroid/graphics/ImageFilterSet;-><init>()V

    invoke-static {v3}, Landroid/graphics/ImageFilter;->createImageFilter(I)Landroid/graphics/ImageFilter;

    move-result-object v0

    check-cast v0, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;

    invoke-static {v3}, Landroid/graphics/ImageFilter;->createImageFilter(I)Landroid/graphics/ImageFilter;

    move-result-object v9

    check-cast v9, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;

    const-string v3, "BlededFilterManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "areaFractionTop: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", areaFractionBottom: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {v11, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    sub-float v5, v2, p2

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    invoke-static {v8, v4, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->setGradient(FFIFFI)V

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v11, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v8, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    move-object v2, v9

    move v3, v1

    move v4, v1

    move v6, v1

    move v7, p3

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->setGradient(FFIFFI)V

    const-string v1, "BlededFilterManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bitmapFilterTop: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bitmapFilterBottom: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Landroid/graphics/ImageFilterSet;->addFilter(Landroid/graphics/ImageFilter;)V

    invoke-virtual {v10, v9}, Landroid/graphics/ImageFilterSet;->addFilter(Landroid/graphics/ImageFilter;)V

    return-object v10
.end method
