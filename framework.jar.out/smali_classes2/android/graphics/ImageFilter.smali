.class public Landroid/graphics/ImageFilter;
.super Ljava/lang/Object;
.source "ImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/ImageFilter$1;,
        Landroid/graphics/ImageFilter$BitmapMaskFilter;,
        Landroid/graphics/ImageFilter$CustomFilter;,
        Landroid/graphics/ImageFilter$DropShadowFilter;,
        Landroid/graphics/ImageFilter$BlendingFilter;,
        Landroid/graphics/ImageFilter$BitmapColorMaskFilter;,
        Landroid/graphics/ImageFilter$MosaicFilter;,
        Landroid/graphics/ImageFilter$VignetteFilter;,
        Landroid/graphics/ImageFilter$DistortionFilter;,
        Landroid/graphics/ImageFilter$ColorClampFilter;,
        Landroid/graphics/ImageFilter$DesaturationFilter;,
        Landroid/graphics/ImageFilter$ColorizeFilter;,
        Landroid/graphics/ImageFilter$ZoomBlurFilter;,
        Landroid/graphics/ImageFilter$DirectionalBlurFilter;,
        Landroid/graphics/ImageFilter$SgiBlurFilter;,
        Landroid/graphics/ImageFilter$CosineBlurFilter;,
        Landroid/graphics/ImageFilter$GaussianBlurFilter;,
        Landroid/graphics/ImageFilter$BlurFilter;
    }
.end annotation


# static fields
.field public static final DEBUG_HWUI_IMAGE_FILTER_ENABLE_PROPERTY:Ljava/lang/String; = "debug.hwui.imagefilter.enable"

.field public static final DEBUG_HWUI_IMAGE_FILTER_LOG_PROPERTY:Ljava/lang/String; = "debug.hwui.imagefilter.log"

.field public static final TYPE_BITMAP_COLOR:I = 0x34

.field public static final TYPE_BITMAP_MASK:I = 0x34

.field public static final TYPE_BLENDING:I = 0x35

.field public static final TYPE_BLUR:I = 0x36

.field public static final TYPE_COLORIZE:I = 0x10

.field public static final TYPE_COLOR_CLAMP:I = 0x12

.field public static final TYPE_COSINE_BLUR:I = 0x4

.field private static final TYPE_CUSTOM_FILTER:I = 0xee

.field public static final TYPE_DESATURATION:I = 0x11

.field public static final TYPE_DIRECTIONAL_BLUR:I = 0x2

.field public static final TYPE_DISTORTION:I = 0x31

.field public static final TYPE_DROP_SHADOW:I = 0x37

.field public static final TYPE_GAUSSIAN_BLUR:I = 0x1

.field public static final TYPE_MOSAIC:I = 0x33

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_SGI_BLUR:I = 0x5

.field public static final TYPE_VIGNETTE:I = 0x32

.field public static final TYPE_ZOOM_BLUR:I = 0x3


# instance fields
.field public final mNativeImageFilter:J


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/ImageFilter;-><init>(I)V

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/graphics/ImageFilter;->native_init()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/ImageFilter;->mNativeImageFilter:J

    iget-wide v0, p0, Landroid/graphics/ImageFilter;->mNativeImageFilter:J

    invoke-static {v0, v1, p1}, Landroid/graphics/ImageFilter;->native_setType(JI)V

    return-void
.end method

.method protected constructor <init>(Landroid/graphics/ImageFilter;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Landroid/graphics/ImageFilter;->mNativeImageFilter:J

    invoke-static {v0, v1}, Landroid/graphics/ImageFilter;->native_copy(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/ImageFilter;->mNativeImageFilter:J

    return-void
.end method

.method public static createCustomFilter(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/ImageFilter$CustomFilter;
    .locals 2

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/ImageFilter$CustomFilter;

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/ImageFilter$CustomFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ImageFilter$1;)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static createImageFilter(I)Landroid/graphics/ImageFilter;
    .locals 2

    const/4 v1, 0x0

    sparse-switch p0, :sswitch_data_0

    move-object v0, v1

    :goto_0
    return-object v0

    :sswitch_0
    new-instance v0, Landroid/graphics/ImageFilter$GaussianBlurFilter;

    invoke-direct {v0, v1}, Landroid/graphics/ImageFilter$GaussianBlurFilter;-><init>(Landroid/graphics/ImageFilter$1;)V

    goto :goto_0

    :sswitch_1
    new-instance v0, Landroid/graphics/ImageFilter$DirectionalBlurFilter;

    invoke-direct {v0, v1}, Landroid/graphics/ImageFilter$DirectionalBlurFilter;-><init>(Landroid/graphics/ImageFilter$1;)V

    goto :goto_0

    :sswitch_2
    new-instance v0, Landroid/graphics/ImageFilter$ZoomBlurFilter;

    invoke-direct {v0, v1}, Landroid/graphics/ImageFilter$ZoomBlurFilter;-><init>(Landroid/graphics/ImageFilter$1;)V

    goto :goto_0

    :sswitch_3
    new-instance v0, Landroid/graphics/ImageFilter$CosineBlurFilter;

    invoke-direct {v0, v1}, Landroid/graphics/ImageFilter$CosineBlurFilter;-><init>(Landroid/graphics/ImageFilter$1;)V

    goto :goto_0

    :sswitch_4
    new-instance v0, Landroid/graphics/ImageFilter$SgiBlurFilter;

    invoke-direct {v0, v1}, Landroid/graphics/ImageFilter$SgiBlurFilter;-><init>(Landroid/graphics/ImageFilter$1;)V

    goto :goto_0

    :sswitch_5
    new-instance v0, Landroid/graphics/ImageFilter$ColorizeFilter;

    invoke-direct {v0, v1}, Landroid/graphics/ImageFilter$ColorizeFilter;-><init>(Landroid/graphics/ImageFilter$1;)V

    goto :goto_0

    :sswitch_6
    new-instance v0, Landroid/graphics/ImageFilter$DesaturationFilter;

    invoke-direct {v0, v1}, Landroid/graphics/ImageFilter$DesaturationFilter;-><init>(Landroid/graphics/ImageFilter$1;)V

    goto :goto_0

    :sswitch_7
    new-instance v0, Landroid/graphics/ImageFilter$ColorClampFilter;

    invoke-direct {v0, v1}, Landroid/graphics/ImageFilter$ColorClampFilter;-><init>(Landroid/graphics/ImageFilter$1;)V

    goto :goto_0

    :sswitch_8
    new-instance v0, Landroid/graphics/ImageFilter$DistortionFilter;

    invoke-direct {v0, v1}, Landroid/graphics/ImageFilter$DistortionFilter;-><init>(Landroid/graphics/ImageFilter$1;)V

    goto :goto_0

    :sswitch_9
    new-instance v0, Landroid/graphics/ImageFilter$VignetteFilter;

    invoke-direct {v0, v1}, Landroid/graphics/ImageFilter$VignetteFilter;-><init>(Landroid/graphics/ImageFilter$1;)V

    goto :goto_0

    :sswitch_a
    new-instance v0, Landroid/graphics/ImageFilter$MosaicFilter;

    invoke-direct {v0, v1}, Landroid/graphics/ImageFilter$MosaicFilter;-><init>(Landroid/graphics/ImageFilter$1;)V

    goto :goto_0

    :sswitch_b
    new-instance v0, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;

    invoke-direct {v0, v1}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;-><init>(Landroid/graphics/ImageFilter$1;)V

    goto :goto_0

    :sswitch_c
    new-instance v0, Landroid/graphics/ImageFilter$BlendingFilter;

    invoke-direct {v0, v1}, Landroid/graphics/ImageFilter$BlendingFilter;-><init>(Landroid/graphics/ImageFilter$1;)V

    goto :goto_0

    :sswitch_d
    new-instance v0, Landroid/graphics/ImageFilter$BlurFilter;

    invoke-direct {v0, v1}, Landroid/graphics/ImageFilter$BlurFilter;-><init>(Landroid/graphics/ImageFilter$1;)V

    goto :goto_0

    :sswitch_e
    new-instance v0, Landroid/graphics/ImageFilter$DropShadowFilter;

    invoke-direct {v0, v1}, Landroid/graphics/ImageFilter$DropShadowFilter;-><init>(Landroid/graphics/ImageFilter$1;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x10 -> :sswitch_5
        0x11 -> :sswitch_6
        0x12 -> :sswitch_7
        0x31 -> :sswitch_8
        0x32 -> :sswitch_9
        0x33 -> :sswitch_a
        0x34 -> :sswitch_b
        0x35 -> :sswitch_c
        0x36 -> :sswitch_d
        0x37 -> :sswitch_e
    .end sparse-switch
.end method

.method private static native finalizer(J)V
.end method

.method private static native native_copy(J)J
.end method

.method private static native native_getType(J)I
.end method

.method private static native native_getValue(JI)F
.end method

.method private static native native_init()J
.end method

.method private static native native_setFragmentShader(JLjava/lang/String;)V
.end method

.method private static native native_setSamplerBitmap(JLjava/lang/String;IJ)V
.end method

.method private static native native_setType(JI)V
.end method

.method private static native native_setUniformMatrix(JLjava/lang/String;II[F)V
.end method

.method private static native native_setUniformf(JLjava/lang/String;II[F)V
.end method

.method private static native native_setUniformi(JLjava/lang/String;II[I)V
.end method

.method private static native native_setUpdateMargin(JIIII)V
.end method

.method private static native native_setValue(JIF)V
.end method

.method private static native native_setVertexShader(JLjava/lang/String;)V
.end method


# virtual methods
.method public clone()Landroid/graphics/ImageFilter;
    .locals 1

    new-instance v0, Landroid/graphics/ImageFilter;

    invoke-direct {v0, p0}, Landroid/graphics/ImageFilter;-><init>(Landroid/graphics/ImageFilter;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/ImageFilter;->clone()Landroid/graphics/ImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public copy()Landroid/graphics/ImageFilter;
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/ImageFilter;->clone()Landroid/graphics/ImageFilter;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-wide v0, p0, Landroid/graphics/ImageFilter;->mNativeImageFilter:J

    invoke-static {v0, v1}, Landroid/graphics/ImageFilter;->finalizer(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getType()I
    .locals 2

    iget-wide v0, p0, Landroid/graphics/ImageFilter;->mNativeImageFilter:J

    invoke-static {v0, v1}, Landroid/graphics/ImageFilter;->native_getType(J)I

    move-result v0

    return v0
.end method

.method protected getValue(I)F
    .locals 2

    iget-wide v0, p0, Landroid/graphics/ImageFilter;->mNativeImageFilter:J

    invoke-static {v0, v1, p1}, Landroid/graphics/ImageFilter;->native_getValue(JI)F

    move-result v0

    return v0
.end method

.method protected setBitmap(Landroid/graphics/Bitmap;)V
    .locals 6

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-wide v0, p0, Landroid/graphics/ImageFilter;->mNativeImageFilter:J

    const-string v2, "filterSamplersStage1"

    iget-wide v4, p1, Landroid/graphics/Bitmap;->mNativeBitmap:J

    invoke-static/range {v0 .. v5}, Landroid/graphics/ImageFilter;->native_setSamplerBitmap(JLjava/lang/String;IJ)V

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Landroid/graphics/ImageFilter;->mNativeImageFilter:J

    const-string v2, "filterSamplersStage1"

    const-wide/16 v4, 0x0

    invoke-static/range {v0 .. v5}, Landroid/graphics/ImageFilter;->native_setSamplerBitmap(JLjava/lang/String;IJ)V

    goto :goto_0
.end method

.method protected setFragmentShader(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/ImageFilter;->mNativeImageFilter:J

    invoke-static {v0, v1, p1}, Landroid/graphics/ImageFilter;->native_setFragmentShader(JLjava/lang/String;)V

    return-void
.end method

.method protected setSamplerBitmap(Ljava/lang/String;ILandroid/graphics/Bitmap;)V
    .locals 6

    if-eqz p3, :cond_0

    iget-wide v0, p0, Landroid/graphics/ImageFilter;->mNativeImageFilter:J

    iget-wide v4, p3, Landroid/graphics/Bitmap;->mNativeBitmap:J

    move-object v2, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Landroid/graphics/ImageFilter;->native_setSamplerBitmap(JLjava/lang/String;IJ)V

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Landroid/graphics/ImageFilter;->mNativeImageFilter:J

    const-wide/16 v4, 0x0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Landroid/graphics/ImageFilter;->native_setSamplerBitmap(JLjava/lang/String;IJ)V

    goto :goto_0
.end method

.method protected setUniformMatrix(Ljava/lang/String;II[F)V
    .locals 6

    const/4 v1, 0x4

    const/4 v0, 0x2

    if-lt p2, v0, :cond_0

    if-gt p2, v1, :cond_0

    if-lt p3, v0, :cond_0

    if-gt p3, v1, :cond_0

    iget-wide v0, p0, Landroid/graphics/ImageFilter;->mNativeImageFilter:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/ImageFilter;->native_setUniformMatrix(JLjava/lang/String;II[F)V

    :cond_0
    return-void
.end method

.method protected setUniformf(Ljava/lang/String;II[F)V
    .locals 6

    if-lez p2, :cond_0

    const/4 v0, 0x4

    if-gt p2, v0, :cond_0

    if-lez p3, :cond_0

    iget-wide v0, p0, Landroid/graphics/ImageFilter;->mNativeImageFilter:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/ImageFilter;->native_setUniformf(JLjava/lang/String;II[F)V

    :cond_0
    return-void
.end method

.method protected setUniformi(Ljava/lang/String;II[I)V
    .locals 6

    if-lez p2, :cond_0

    const/4 v0, 0x4

    if-gt p2, v0, :cond_0

    if-lez p3, :cond_0

    iget-wide v0, p0, Landroid/graphics/ImageFilter;->mNativeImageFilter:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/ImageFilter;->native_setUniformi(JLjava/lang/String;II[I)V

    :cond_0
    return-void
.end method

.method protected setUpdateMargin(IIII)V
    .locals 6

    iget-wide v0, p0, Landroid/graphics/ImageFilter;->mNativeImageFilter:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/ImageFilter;->native_setUpdateMargin(JIIII)V

    return-void
.end method

.method protected setValue(IF)V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/ImageFilter;->mNativeImageFilter:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/ImageFilter;->native_setValue(JIF)V

    return-void
.end method

.method protected setVertexShader(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/ImageFilter;->mNativeImageFilter:J

    invoke-static {v0, v1, p1}, Landroid/graphics/ImageFilter;->native_setVertexShader(JLjava/lang/String;)V

    return-void
.end method
