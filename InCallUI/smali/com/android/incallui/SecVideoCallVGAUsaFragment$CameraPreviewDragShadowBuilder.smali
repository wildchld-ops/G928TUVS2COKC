.class Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "SecVideoCallVGAUsaFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecVideoCallVGAUsaFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CameraPreviewDragShadowBuilder"
.end annotation


# instance fields
.field private shadow:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    const v1, 0x7f10029e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    move-object v0, v1

    check-cast v0, Landroid/view/TextureView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/TextureView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragShadowBuilder;->shadow:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragShadowBuilder;->shadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragShadowBuilder;->shadow:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragShadowBuilder;->shadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Point;->set(II)V

    div-int/lit8 v2, v1, 0x2

    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Point;->set(II)V

    goto :goto_0
.end method
