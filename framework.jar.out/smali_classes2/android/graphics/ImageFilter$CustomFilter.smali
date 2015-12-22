.class public Landroid/graphics/ImageFilter$CustomFilter;
.super Landroid/graphics/ImageFilter;
.source "ImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomFilter"
.end annotation


# direct methods
.method private constructor <init>(Landroid/graphics/ImageFilter$CustomFilter;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/graphics/ImageFilter;-><init>(Landroid/graphics/ImageFilter;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xee

    invoke-direct {p0, v0}, Landroid/graphics/ImageFilter;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/graphics/ImageFilter$CustomFilter;->setVertexShader(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroid/graphics/ImageFilter$CustomFilter;->setFragmentShader(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ImageFilter$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/graphics/ImageFilter$CustomFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clone()Landroid/graphics/ImageFilter;
    .locals 1

    new-instance v0, Landroid/graphics/ImageFilter$CustomFilter;

    invoke-direct {v0, p0}, Landroid/graphics/ImageFilter$CustomFilter;-><init>(Landroid/graphics/ImageFilter$CustomFilter;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/ImageFilter$CustomFilter;->clone()Landroid/graphics/ImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public setSamplerBitmap(Ljava/lang/String;ILandroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/graphics/ImageFilter;->setSamplerBitmap(Ljava/lang/String;ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public setUniform1f(Ljava/lang/String;F)V
    .locals 3

    const/4 v2, 0x1

    new-array v0, v2, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-super {p0, p1, v2, v2, v0}, Landroid/graphics/ImageFilter;->setUniformf(Ljava/lang/String;II[F)V

    return-void
.end method

.method public setUniform1i(Ljava/lang/String;I)V
    .locals 3

    const/4 v2, 0x1

    new-array v0, v2, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-super {p0, p1, v2, v2, v0}, Landroid/graphics/ImageFilter;->setUniformi(Ljava/lang/String;II[I)V

    return-void
.end method

.method public setUniform2f(Ljava/lang/String;FF)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-array v0, v3, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    aput p3, v0, v2

    invoke-super {p0, p1, v3, v2, v0}, Landroid/graphics/ImageFilter;->setUniformf(Ljava/lang/String;II[F)V

    return-void
.end method

.method public setUniform2i(Ljava/lang/String;II)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-array v0, v3, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    aput p3, v0, v2

    invoke-super {p0, p1, v3, v2, v0}, Landroid/graphics/ImageFilter;->setUniformi(Ljava/lang/String;II[I)V

    return-void
.end method

.method public setUniform3f(Ljava/lang/String;FFF)V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x1

    new-array v0, v3, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    aput p3, v0, v2

    const/4 v1, 0x2

    aput p4, v0, v1

    invoke-super {p0, p1, v3, v2, v0}, Landroid/graphics/ImageFilter;->setUniformf(Ljava/lang/String;II[F)V

    return-void
.end method

.method public setUniform3i(Ljava/lang/String;III)V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x1

    new-array v0, v3, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    aput p3, v0, v2

    const/4 v1, 0x2

    aput p4, v0, v1

    invoke-super {p0, p1, v3, v2, v0}, Landroid/graphics/ImageFilter;->setUniformi(Ljava/lang/String;II[I)V

    return-void
.end method

.method public setUniform4f(Ljava/lang/String;FFFF)V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x1

    new-array v0, v3, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    aput p3, v0, v2

    const/4 v1, 0x2

    aput p4, v0, v1

    const/4 v1, 0x3

    aput p5, v0, v1

    invoke-super {p0, p1, v3, v2, v0}, Landroid/graphics/ImageFilter;->setUniformf(Ljava/lang/String;II[F)V

    return-void
.end method

.method public setUniform4i(Ljava/lang/String;IIII)V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x1

    new-array v0, v3, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    aput p3, v0, v2

    const/4 v1, 0x2

    aput p4, v0, v1

    const/4 v1, 0x3

    aput p5, v0, v1

    invoke-super {p0, p1, v3, v2, v0}, Landroid/graphics/ImageFilter;->setUniformi(Ljava/lang/String;II[I)V

    return-void
.end method

.method public setUniformMatrix(Ljava/lang/String;II[F)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/ImageFilter;->setUniformMatrix(Ljava/lang/String;II[F)V

    return-void
.end method

.method public setUniformfv(Ljava/lang/String;II[F)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/ImageFilter;->setUniformf(Ljava/lang/String;II[F)V

    return-void
.end method

.method public setUniformiv(Ljava/lang/String;II[I)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/ImageFilter;->setUniformi(Ljava/lang/String;II[I)V

    return-void
.end method

.method public setUpdateMargin(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/ImageFilter;->setUpdateMargin(IIII)V

    return-void
.end method
