.class public Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;
.super Ljava/lang/Object;
.source "DropMorphingPath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$1;,
        Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private lastX:F

.field private lastX1:F

.field private lastY:F

.field private lastY1:F

.field private final offsetX:F

.field private final offsetY:F

.field private path:[Landroid/graphics/Path;

.field private final pathTotal:I

.field private scale:F


# direct methods
.method public constructor <init>(F)V
    .locals 3

    const/16 v1, 0x3c

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "VisualEffectDropMorphingPath"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->TAG:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->pathTotal:I

    const v0, -0x3c290ccd    # -429.9f

    iput v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->offsetX:F

    const v0, -0x3b81c000    # -1017.0f

    iput v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->offsetY:F

    new-array v0, v1, [Landroid/graphics/Path;

    iput-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    const-string v0, "VisualEffectDropMorphingPath"

    const-string v1, "DropMorphingPath : Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "VisualEffectDropMorphingPath"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DropMorphingPath : scale = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->scale:F

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->setPath()V

    return-void
.end method

.method private setPath()V
    .locals 11

    const/4 v9, -0x1

    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    const v0, -0x3c290ccd    # -429.9f

    const v2, -0x3b81c000    # -1017.0f

    invoke-virtual {v10, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->scale:F

    iget v2, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->scale:F

    invoke-virtual {v10, v0, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x440c375c

    const v3, 0x44834a2d

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3e126e98    # 0.143f

    const v4, -0x40f1eb85    # -0.555f

    const v5, 0x3e8ccccd    # 0.275f

    const v6, -0x40708312    # -1.121f

    const v7, 0x3ed2f1aa    # 0.412f

    const v8, -0x40283127    # -1.686f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3df3b646    # 0.119f

    const v4, -0x4103126f    # -0.494f

    const v5, 0x3e75c28f    # 0.24f

    const v6, -0x4083126f    # -0.988f

    const v7, 0x3eb53f7d    # 0.354f

    const v8, -0x40420c4a    # -1.484f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3e439581    # 0.191f

    const v4, -0x40a9fbe7    # -0.836f

    const v5, 0x3ebef9db    # 0.373f

    const v6, -0x402872b0    # -1.684f

    const v7, 0x3f0d9168    # 0.553f

    const v8, -0x3fdd8106    # -2.539f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3d3020c5    # 0.043f

    const v4, -0x41a9fbe7    # -0.209f

    const v5, 0x3db020c5    # 0.086f

    const v6, -0x412b020c    # -0.416f

    const v7, 0x3e041893    # 0.129f

    const/high16 v8, -0x40e00000    # -0.625f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3fd47ae1    # 1.66f

    const v4, -0x3efddf3b    # -8.133f

    const v5, 0x402d6042    # 2.709f

    const v6, -0x3e774fdf    # -17.086f

    const v7, 0x402d6042    # 2.709f

    const v8, -0x3e295810    # -26.832f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x3e4b47ae    # -22.59f

    const v5, -0x3f5fef9e    # -5.002f

    const v6, -0x3dd81db2    # -41.971f

    const v7, -0x3eb08f5c    # -12.965f

    const v8, -0x3d987be7

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3f448312    # -5.859f

    const v4, -0x3eba4189    # -12.359f

    const v5, -0x3ea76042    # -13.539f

    const v6, -0x3e428312    # -23.686f

    const v7, -0x3e4a72b0    # -22.694f

    const v8, -0x3df976c9

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3ff0d4fe    # -2.237f

    const v4, -0x3fe25e35    # -2.463f

    const v5, -0x3f6e5e35    # -4.551f

    const v6, -0x3f658106    # -4.828f

    const v7, -0x3f21999a    # -6.95f

    const v8, -0x3f1d6042    # -7.082f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3f20ed91    # -6.971f

    const v4, -0x3f2e76c9    # -6.548f

    const v5, -0x3e9a8f5c    # -14.34f

    const v6, -0x3ebe0831    # -12.123f

    const v7, -0x3e4d78d5    # -22.316f

    const v8, -0x3e788937    # -16.933f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x421eb852    # -0.11f

    const v4, -0x4276c8b4    # -0.067f

    const v5, -0x419cac08    # -0.222f

    const v6, -0x41f8d4fe    # -0.132f

    const v7, -0x41560419    # -0.332f

    const v8, -0x41b43958    # -0.199f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x40ee5604    # -0.569f

    const v4, -0x4150e560    # -0.342f

    const v5, -0x406df3b6    # -1.141f

    const v6, -0x40d16873    # -0.682f

    const v7, -0x40243958    # -1.717f

    const v8, -0x407df3b6    # -1.016f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3f3b851f    # -6.14f

    const v4, -0x3f9a4dd3    # -3.589f

    const v5, -0x3eb69ba6    # -12.587f

    const v6, -0x3f295810    # -6.708f

    const v7, -0x3e65a5e3    # -19.294f

    const v8, -0x3eeb1687    # -9.307f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3f4b0a3d    # -5.655f

    const v4, -0x3ff1eb85    # -2.22f

    const v5, -0x3ec6e148    # -11.57f

    const v6, -0x3f7d8937    # -4.077f

    const v7, -0x3e719ba6    # -17.799f

    const v8, -0x3f4fbe77    # -5.508f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3ee0fdf4    # -9.938f

    const v4, -0x3fead0e5    # -2.331f

    const v5, -0x3e5d9db2    # -20.298f

    const v6, -0x3f9b9581    # -3.569f

    const v7, -0x3e086c8b    # -30.947f

    const v8, -0x3f9b9581    # -3.569f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3d6ae1cb

    const/4 v4, 0x0

    const/high16 v5, -0x3cf90000    # -135.0f

    const v6, 0x4271c396

    const/high16 v7, -0x3cf90000    # -135.0f

    const/high16 v8, 0x43070000    # 135.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x420075c3

    const v5, 0x41338d50    # 11.222f

    const v6, 0x42766a7f    # 61.604f

    const v7, 0x41ef9375    # 29.947f

    const v8, 0x42a98ed9    # 84.779f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3e26e979    # 0.163f

    const v4, 0x3e4fdf3b    # 0.203f

    const v5, 0x3ea76c8b    # 0.327f

    const v6, 0x3ed0e560    # 0.408f

    const v7, 0x3efb645a    # 0.491f

    const v8, 0x3f1be76d    # 0.609f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3ea04189    # 0.313f

    const v4, 0x3ec51eb8    # 0.385f

    const v5, 0x3f2147ae    # 0.63f

    const v6, 0x3f439581    # 0.764f

    const v7, 0x3f726e98    # 0.947f

    const v8, 0x3f928f5c    # 1.145f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41c376c9    # 24.433f

    const v4, 0x41eb374c    # 29.402f

    const v5, 0x4274f9db    # 61.244f

    const v6, 0x42423646

    const v7, 0x42cf2042

    const v8, 0x42423646

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41227ae1    # 10.155f

    const/4 v4, 0x0

    const v5, 0x419878d5    # 19.059f

    const v6, -0x40728f5c    # -1.105f

    const v7, 0x41d7c49c    # 26.971f

    const v8, -0x3fce872b    # -2.773f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x410a72b0    # 8.653f

    const v4, -0x401fbe77    # -1.752f

    const v5, 0x41880a3d    # 17.005f

    const v6, -0x3f754fdf    # -4.334f

    const v7, 0x41c7c8b4    # 24.973f

    const v8, -0x3f0b126f    # -7.654f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3deb851f    # 0.115f

    const v4, -0x42c7ae14    # -0.045f

    const v5, 0x3e70a3d7    # 0.235f

    const v6, -0x4247ae14    # -0.09f

    const v7, 0x3eb3b646    # 0.351f

    const v8, -0x41f7ced9    # -0.133f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x40b34396    # 5.602f

    const v4, -0x3ff5c28f    # -2.16f

    const v5, 0x413a8312    # 11.657f

    const v6, -0x3f565e35    # -5.301f

    const v7, 0x418d47ae    # 17.66f

    const v8, -0x3eefced9    # -9.012f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3d810625    # 0.063f

    const v4, -0x42e04189    # -0.039f

    const v5, 0x3e03126f    # 0.128f

    const v6, -0x42604189    # -0.078f

    const v7, 0x3e439581    # 0.191f

    const v8, -0x42147ae1    # -0.115f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3ddf3b64    # 0.109f

    const v4, -0x4274bc6a    # -0.068f

    const v5, 0x3e604189    # 0.219f

    const v6, -0x41f3b646    # -0.137f

    const v7, 0x3ea7ef9e    # 0.328f

    const v8, -0x41ae147b    # -0.205f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x409ed917    # 4.964f

    const v4, -0x3fbd6042    # -3.041f

    const v5, 0x411b6873    # 9.713f

    const v6, -0x3f334396    # -6.398f

    const v7, 0x4163a1cb    # 14.227f

    const v8, -0x3edf70a4    # -10.035f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x402c5a1d    # 2.693f

    const v4, -0x3ff79db2    # -2.131f

    const v5, 0x40a8fdf4    # 5.281f

    const v6, -0x3f75fbe7    # -4.313f

    const v7, 0x40f61cac    # 7.691f

    const v8, -0x3f2fced9    # -6.506f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x407d70a4    # 3.96f

    const v4, -0x3f9947ae    # -3.605f

    const v5, 0x40fd6042    # 7.918f

    const v6, -0x3f023d71    # -7.93f

    const v7, 0x413ae560    # 11.681f

    const v8, -0x3eb65e35    # -12.602f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x4408a4fe

    const v4, 0x4487fd91

    const v5, 0x440af842

    const v6, 0x4485bf6d

    const v7, 0x440c375c

    const v8, 0x44834a2d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x440a1821

    const v3, 0x446fd28f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3effae14    # -8.02f

    const v4, -0x3e81f7cf    # -15.877f

    const v5, -0x3e713f7d    # -17.844f

    const v6, -0x3e148106    # -29.437f

    const v7, -0x3e1272b0    # -29.694f

    const v8, -0x3dde0d50    # -40.487f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3fd353f8    # -2.698f

    const v4, -0x3fdef9db    # -2.516f

    const v5, -0x3f515810    # -5.458f

    const v6, -0x3f638d50    # -4.889f

    const v7, -0x3efb70a4    # -8.285f

    const v8, -0x3f1b7cee    # -7.141f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3eb6ac08    # -12.583f

    const v4, -0x3ede8b44    # -10.091f

    const v5, -0x3e27e979    # -27.011f

    const v6, -0x3e70374c    # -17.973f

    const v7, -0x3dd53439

    const v8, -0x3e477efa    # -23.063f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x4111eb85    # -0.465f

    const v4, -0x41e45a1d    # -0.152f

    const v5, -0x40926e98    # -0.928f

    const v6, -0x4162d0e5    # -0.307f

    const v7, -0x404d4fdf    # -1.396f

    const v8, -0x41181062    # -0.453f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x4165e354    # -0.301f

    const v4, -0x423f7cee    # -0.094f

    const v5, -0x40e56042    # -0.604f

    const v6, -0x41c5a1cb    # -0.182f

    const v7, -0x40989375    # -0.904f

    const v8, -0x41743958    # -0.273f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x40bfbe77    # -0.751f

    const v4, -0x41958106    # -0.229f

    const v5, -0x403f9db2    # -1.503f

    const v6, -0x41160419    # -0.457f

    const v7, -0x3fef1aa0    # -2.264f

    const v8, -0x40d3b646    # -0.673f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x41189375    # -0.452f

    const v4, -0x41fbe76d    # -0.129f

    const v5, -0x40974bc7    # -0.909f

    const/high16 v6, -0x41800000    # -0.25f

    const v7, -0x40516873    # -1.364f

    const v8, -0x41408312    # -0.374f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x40f7ced9    # -0.532f

    const v4, -0x41eb851f    # -0.145f

    const v5, -0x40781062    # -1.062f

    const v6, -0x416978d5    # -0.294f

    const v7, -0x403353f8    # -1.599f

    const v8, -0x41224dd3    # -0.433f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3ed16873    # -10.912f

    const v4, -0x3fc9db23    # -2.846f

    const v5, -0x3e4d1eb8    # -22.36f

    const v6, -0x3f7451ec    # -4.365f

    const v7, -0x3df75810

    const v8, -0x3f7451ec    # -4.365f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3d6ae1cb

    const/4 v4, 0x0

    const/high16 v5, -0x3cf90000    # -135.0f

    const v6, 0x4271c396

    const/high16 v7, -0x3cf90000    # -135.0f

    const/high16 v8, 0x43070000    # 135.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x4200999a    # 32.15f

    const v5, 0x4133ef9e    # 11.246f

    const v6, 0x4276ae14    # 61.67f

    const v7, 0x41f0147b    # 30.01f

    const v8, 0x42a9b6c9

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3e03126f    # 0.128f

    const v4, 0x3e21cac1    # 0.158f

    const v5, 0x3e83126f    # 0.256f

    const v6, 0x3ea2d0e5    # 0.318f

    const v7, 0x3ec51eb8    # 0.385f

    const v8, 0x3ef43958    # 0.477f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3eb33333    # 0.35f

    const v4, 0x3edc28f6    # 0.43f

    const v5, 0x3f33f7cf    # 0.703f

    const v6, 0x3f5a9fbe    # 0.854f

    const v7, 0x3f876c8b    # 1.058f

    const v8, 0x3fa374bc    # 1.277f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41c378d5    # 24.434f

    const v4, 0x41eadb23    # 29.357f

    const v5, 0x4274df3b

    const v6, 0x4241e666

    const v7, 0x42cefdf4

    const v8, 0x4241e666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41214fdf    # 10.082f

    const/4 v4, 0x0

    const v5, 0x41978106    # 18.938f

    const v6, -0x40747ae1    # -1.09f

    const v7, 0x41d68937    # 26.817f

    const v8, -0x3fd0624e    # -2.744f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x4116e148    # 9.43f

    const v4, -0x400d4fdf    # -1.896f

    const v5, 0x41940419    # 18.502f

    const v6, -0x3f67020c    # -4.781f

    const v7, 0x41d8df3b    # 27.109f

    const v8, -0x3ef78106    # -8.531f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x404d6042    # 3.209f

    const v4, -0x4055c28f    # -1.33f

    const v5, 0x40d16873    # 6.544f

    const v6, -0x3fc2c083    # -2.957f

    const v7, 0x411ec49c    # 9.923f

    const v8, -0x3f65f3b6    # -4.814f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41064189    # 8.391f

    const v4, -0x3f6fbe77    # -4.508f

    const v5, 0x4181f9db    # 16.247f

    const v6, -0x3ee1ef9e    # -9.879f

    const v7, 0x41bba5e3    # 23.456f

    const v8, -0x3e8020c5    # -15.992f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3fed4fdf    # 1.854f

    const v4, -0x403d4fdf    # -1.521f

    const v5, 0x4069ba5e    # 3.652f

    const v6, -0x3fbc3958    # -3.059f

    const v7, 0x40ab74bc    # 5.358f

    const v8, -0x3f6ccccd    # -4.6f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x4139df3b    # 11.617f

    const v4, -0x3ed81062    # -10.496f

    const v5, 0x41b9978d    # 23.199f

    const v6, -0x3e27f7cf    # -27.004f

    const v7, 0x41ee0e56    # 29.757f

    const v8, -0x3ddd147b    # -40.73f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x40d0cccd    # 6.525f

    const v4, -0x3ea45e35    # -13.727f

    const v5, 0x4150872b    # 13.033f

    const v6, -0x3dfb3852    # -33.195f

    const v7, 0x4150872b    # 13.033f

    const v8, -0x3d99cbc7

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x440d5a3d

    const v4, 0x4478a2c1

    const v5, 0x440c179e

    const v6, 0x4473caa0

    const v7, 0x440a1821

    const v8, 0x446fd28f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x440bca7f

    const v3, 0x44704000    # 961.0f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3ef5374c    # -8.674f

    const v4, -0x3e8fa5e3    # -15.022f

    const v5, -0x3e6c24dd    # -18.482f

    const v6, -0x3e2772b0    # -27.069f

    const v7, -0x3e05645a    # -31.326f

    const v8, -0x3de9e76d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x40af5c29    # -0.815f

    const v4, -0x40d5c28f    # -0.665f

    const v5, -0x402eb852    # -1.635f

    const v6, -0x4055e354    # -1.329f

    const v7, -0x3fe2b021    # -2.458f

    const v8, -0x40010625    # -1.992f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e3c9ba6    # -24.424f

    const v4, -0x3e3cf5c3    # -24.38f

    const v5, -0x3d9772b0    # -58.138f

    const v6, -0x3de22d0e

    const v7, -0x3d414106

    const v8, -0x3de22d0e

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3d6ae1cb

    const/4 v4, 0x0

    const/high16 v5, -0x3cf90000    # -135.0f

    const v6, 0x4271c396

    const/high16 v7, -0x3cf90000    # -135.0f

    const/high16 v8, 0x43070000    # 135.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42096666    # 34.35f

    const v5, 0x414d6042    # 12.836f

    const v6, 0x428364dd

    const v7, 0x4207dc29    # 33.965f

    const v8, 0x42b30bc7

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3e8ccccd    # 0.275f

    const v4, 0x3ea0c49c    # 0.314f

    const v5, 0x3f0d4fdf    # 0.552f

    const v6, 0x3f208312    # 0.627f

    const v7, 0x3f547ae1    # 0.83f

    const v8, 0x3f7020c5    # 0.938f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3e624dd3    # 0.221f

    const v4, 0x3e79db23    # 0.244f

    const v5, 0x3ee2d0e5    # 0.443f

    const v6, 0x3ef8d4fe    # 0.486f

    const v7, 0x3f2a7efa    # 0.666f

    const v8, 0x3f3a9fbe    # 0.729f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41c2e76d    # 24.363f

    const v4, 0x41d5f7cf    # 26.746f

    const v5, 0x426ddc29    # 59.465f

    const v6, 0x422f8625    # 43.881f

    const v7, 0x42c6e979

    const v8, 0x422f8625    # 43.881f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x40eda1cb    # 7.426f

    const/4 v4, 0x0

    const v5, 0x41640419    # 14.251f

    const v6, -0x40e76c8b    # -0.596f

    const v7, 0x41a46a7f    # 20.552f

    const v8, -0x40318937    # -1.613f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41e79ba6    # 28.951f

    const v4, -0x3f73126f    # -4.404f

    const v5, 0x425b8312

    const v6, -0x3e6ff3b6    # -18.006f

    const v7, 0x42956d0e

    const v8, -0x3de9178d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3f6353f8    # 0.888f

    const v4, -0x40ce978d    # -0.693f

    const v5, 0x3fe1cac1    # 1.764f

    const v6, -0x404f7cee    # -1.379f

    const v7, 0x4027ae14    # 2.62f

    const v8, -0x3ffcbc6a    # -2.051f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x414a3958    # 12.639f

    const v4, -0x3ee11687    # -9.932f

    const v5, 0x41bffbe7    # 23.998f

    const v6, -0x3e39c8b4    # -24.777f

    const v7, 0x41fad70a    # 31.355f

    const v8, -0x3de8f1aa    # -37.764f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x40d6f1aa    # 6.717f

    const v4, -0x3eb03127    # -12.988f

    const v5, 0x415b1eb8    # 13.695f

    const v6, -0x3e0147ae    # -31.84f

    const v7, 0x415b1eb8    # 13.695f

    const v8, -0x3da0b439

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x440f36fa

    const v4, 0x4478b439

    const v5, 0x440dd51f

    const v6, 0x44740168

    const v7, 0x440bca7f

    const v8, 0x44704000    # 961.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x440d7bc7

    const v3, 0x4470ad1f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3eeac8b4    # -9.326f

    const v4, -0x3e9d4bc7    # -14.169f

    const v5, -0x3e671062    # -19.117f

    const v6, -0x3e3a5604    # -24.708f

    const v7, -0x3dfc3021    # -32.953f

    const v8, -0x3df5b852    # -34.57f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x4055e354    # -1.329f

    const v4, -0x408d0e56    # -0.949f

    const v5, -0x3fd53f7d    # -2.668f

    const v6, -0x4009374c    # -1.928f

    const v7, -0x3f7f9581    # -4.013f

    const v8, -0x3fc52f1b    # -2.919f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e3ac6a8    # -24.653f

    const v4, -0x3e2b8106    # -26.562f

    const v5, -0x3d908d50    # -59.862f

    const v6, -0x3dd33e77    # -43.189f

    const v7, -0x3d3a13f8

    const v8, -0x3dd33e77    # -43.189f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3d6ae1cb

    const/4 v4, 0x0

    const/high16 v5, -0x3cf90000    # -135.0f

    const v6, 0x4271c396

    const/high16 v7, -0x3cf90000    # -135.0f

    const/high16 v8, 0x43070000    # 135.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x420eed91

    const v5, 0x415e3958    # 13.889f

    const v6, 0x42886f1b

    const v7, 0x4212374c    # 36.554f

    const v8, 0x42b8bae1

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3d591687    # 0.053f

    const v4, 0x3d6978d5    # 0.057f

    const v5, 0x3dd70a3d    # 0.105f

    const v6, 0x3de76c8b    # 0.113f

    const v7, 0x3e21cac1    # 0.158f

    const v8, 0x3e2e147b    # 0.17f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3ee978d5    # 0.456f

    const v4, 0x3ef7ced9    # 0.484f

    const v5, 0x3f6a7efa    # 0.916f

    const v6, 0x3f76872b    # 0.963f

    const v7, 0x3fb08312    # 1.379f

    const v8, 0x3fb83127    # 1.439f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3ee8f5c3    # 0.455f

    const v4, 0x3ef22d0e    # 0.473f

    const v5, 0x3f69ba5e    # 0.913f

    const v6, 0x3f716873    # 0.943f

    const/high16 v7, 0x3fb00000    # 1.375f

    const v8, 0x3fb43958    # 1.408f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3d79db23    # 0.061f

    const v4, 0x3d79db23    # 0.061f

    const v5, 0x3df7ced9    # 0.121f

    const v6, 0x3df7ced9    # 0.121f

    const v7, 0x3e3a5e35    # 0.182f

    const v8, 0x3e3a5e35    # 0.182f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41c0f9db    # 24.122f

    const v4, 0x41c1c083    # 24.219f

    const v5, 0x4266126f

    const v6, 0x421df5c3    # 39.49f

    const v7, 0x42be7958    # 95.237f

    const v8, 0x421df5c3    # 39.49f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x40bc20c5    # 5.879f

    const/4 v4, 0x0

    const v5, 0x41368312    # 11.407f

    const v6, -0x413be76d    # -0.383f

    const v7, 0x41850e56    # 16.632f

    const v8, -0x40783127    # -1.061f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x4201dc29    # 32.465f

    const v4, -0x3f827efa    # -3.961f

    const v5, 0x427576c9

    const v6, -0x3e6470a4    # -19.445f

    const v7, 0x42a4ff7d    # 82.499f

    const v8, -0x3dd70a3d    # -42.24f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3fac0831    # 1.344f

    const v4, -0x408978d5    # -0.963f

    const v5, 0x402af1aa    # 2.671f

    const v6, -0x400c8b44    # -1.902f

    const v7, 0x407d8106    # 3.961f

    const v8, -0x3fcda1cb    # -2.787f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x415a8b44    # 13.659f

    const v4, -0x3eea20c5    # -9.367f

    const v5, 0x41c65810    # 24.793f

    const v6, -0x3e4b8f5c    # -22.555f

    const v7, 0x4203cccd    # 32.95f

    const v8, -0x3df4c7ae    # -34.805f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x40dcfdf4    # 6.906f

    const/high16 v4, -0x3ebc0000    # -12.25f

    const v5, 0x4165a9fc    # 14.354f

    const v6, -0x3e0c1cac    # -30.486f

    const v7, 0x4165a9fc    # 14.354f

    const v8, -0x3da7978d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x4411125e

    const v4, 0x4478c5e3

    const v5, 0x440f9158

    const v6, 0x44743821

    const v7, 0x440d7bc7

    const v8, 0x4470ad1f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x440f2bc7

    const v3, 0x447119fc

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3ee05604    # -9.979f

    const v4, -0x3eaae148    # -13.32f

    const v5, -0x3e61fbe7    # -19.752f

    const v6, -0x3e4d2b02    # -22.354f

    const v7, -0x3df5b333    # -34.575f

    const/high16 v8, -0x3e030000    # -31.625f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x400851ec    # -1.935f

    const v4, -0x4064bc6a    # -1.213f

    const v5, -0x3f879db2    # -3.881f

    const v6, -0x3fded917    # -2.518f

    const v7, -0x3f451687    # -5.841f

    const v8, -0x3f872b02    # -3.888f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e39f3b6    # -24.756f

    const v4, -0x3e1a6873    # -28.699f

    const v5, -0x3d8a74bc

    const v6, -0x3dc48831    # -46.867f

    const v7, -0x3d337a5e

    const v8, -0x3dc48831    # -46.867f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3d6ae1cb

    const/4 v4, 0x0

    const/high16 v5, -0x3cf90000    # -135.0f

    const v6, 0x4271c396

    const/high16 v7, -0x3cf90000    # -135.0f

    const/high16 v8, 0x43070000    # 135.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x4217b852    # 37.93f

    const v5, 0x417a6666    # 15.65f

    const v6, 0x429066e9

    const v7, 0x42235917

    const v8, 0x42c17333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3e54fdf4    # 0.208f

    const v4, 0x3e4fdf3b    # 0.203f

    const v5, 0x3ed47ae1    # 0.415f

    const v6, 0x3ed0e560    # 0.408f

    const v7, 0x3f1fbe77    # 0.624f

    const v8, 0x3f1be76d    # 0.609f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3ea5e354    # 0.324f

    const v4, 0x3ea04189    # 0.313f

    const v5, 0x3f266666    # 0.65f

    const v6, 0x3f1e76c9    # 0.619f

    const v7, 0x3f7a1cac    # 0.977f

    const v8, 0x3f6d9168    # 0.928f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41bf0a3d    # 23.88f

    const v4, 0x41b524dd    # 22.643f

    const v5, 0x4260a5e3

    const v6, 0x4213199a

    const v7, 0x42b8d4fe    # 92.416f

    const v8, 0x4213199a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x409a353f    # 4.819f

    const/4 v4, 0x0

    const v5, 0x4116dd2f    # 9.429f

    const v6, -0x417df3b6    # -0.254f

    const v7, 0x415d78d5    # 13.842f

    const v8, -0x40c66666    # -0.725f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x420d9ba6    # 35.402f

    const v4, -0x3f9ba5e3    # -3.568f

    const v5, 0x4285872b    # 66.764f

    const v6, -0x3e597cee    # -20.814f

    const v7, 0x42b174bc

    const v8, -0x3dc68419

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3ff8d4fe    # 1.944f

    const v4, -0x4056c8b4    # -1.322f

    const v5, 0x4076a7f0    # 3.854f

    const v6, -0x3fdc3958    # -2.559f

    const v7, 0x40b6d917    # 5.714f

    const v8, -0x3f94dd2f    # -3.674f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x416ac8b4    # 14.674f

    const v4, -0x3ef31687    # -8.807f

    const v5, 0x41ccb021    # 25.586f

    const v6, -0x3e5d47ae    # -20.34f

    const v7, 0x420a28f6    # 34.54f

    const v8, -0x3e012b02    # -31.854f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x40e3126f    # 7.096f

    const v4, -0x3ec7b646    # -11.518f

    const v5, 0x41703127    # 15.012f

    const v6, -0x3e16e354    # -29.139f

    const v7, 0x41703127    # 15.012f

    const v8, -0x3dae75c3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x4412ec7b

    const v4, 0x4478d75c

    const v5, 0x44114c39

    const v6, 0x44746e87

    const v7, 0x440f2bc7

    const v8, 0x447119fc

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x4410da3d

    const v3, 0x44718687

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3ed5f7cf    # -10.627f

    const v4, -0x3eb86e98    # -12.473f

    const v5, -0x3e5ceb85    # -20.385f

    const v6, -0x3e5ff1aa    # -20.007f

    const v7, -0x3def3c6a

    const v8, -0x3e1a7cee    # -28.689f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3fd54fdf    # -2.667f

    const v4, -0x4043f7cf    # -1.469f

    const v5, -0x3f54d4fe    # -5.349f

    const v6, -0x3fb4cccd    # -3.175f

    const v7, -0x3eff3333    # -8.05f

    const v8, -0x3f5f0a3d    # -5.03f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e3a0a3d    # -24.745f

    const v4, -0x3e0a5c29    # -30.705f

    const v5, -0x3d856148

    const v6, -0x3db6947b    # -50.355f

    const v7, -0x3d2dad91

    const v8, -0x3db6947b    # -50.355f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3d6ae1cb

    const/4 v4, 0x0

    const/high16 v5, -0x3cf90000    # -135.0f

    const v6, 0x4271c396

    const/high16 v7, -0x3cf90000    # -135.0f

    const/high16 v8, 0x43070000    # 135.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x4220820c

    const v5, 0x418c1aa0    # 17.513f

    const v6, 0x42984fdf

    const v7, 0x4235374c    # 45.304f

    const v8, 0x42c9c51f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3ec18937    # 0.378f

    const v4, 0x3eac0831    # 0.336f

    const v5, 0x3f418937    # 0.756f

    const v6, 0x3f2c8b44    # 0.674f

    const v7, 0x3f918937    # 1.137f

    const v8, 0x3f810625    # 1.008f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3e353f7d    # 0.177f

    const v4, 0x3e1db22d    # 0.154f

    const v5, 0x3eb5c28f    # 0.355f

    const v6, 0x3e9d2f1b    # 0.307f

    const v7, 0x3f0872b0    # 0.533f

    const v8, 0x3eeb020c    # 0.459f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41bae76d    # 23.363f

    const v4, 0x41a1e354    # 20.236f

    const v5, 0x42577be7

    const v6, 0x4202b021    # 32.672f

    const v7, 0x42afb2b0    # 87.849f

    const v8, 0x4202b021    # 32.672f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x400cac08    # 2.198f

    const/4 v4, 0x0

    const v5, 0x408af9db    # 4.343f

    const v6, -0x4270a3d7    # -0.07f

    const v7, 0x40ced0e5    # 6.463f

    const v8, -0x41cdd2f2    # -0.174f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3f19db23    # 0.601f

    const v4, -0x4322d0e5    # -0.027f

    const v5, 0x3f995810    # 1.198f

    const v6, -0x428624dd    # -0.061f

    const v7, 0x3fe60419    # 1.797f

    const v8, -0x423b645a    # -0.096f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3f18d4fe    # 0.597f

    const v4, -0x42e872b0    # -0.037f

    const v5, 0x3f99374c    # 1.197f

    const v6, -0x4274bc6a    # -0.068f

    const v7, 0x3fe4dd2f    # 1.788f

    const v8, -0x42189375    # -0.113f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x421a7efa    # 38.624f

    const v4, -0x3fcd3f7d    # -2.793f

    const v5, 0x429179db

    const v6, -0x3e515810    # -21.832f

    const v7, 0x42bf1b23

    const v8, -0x3db6b852    # -50.32f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x402b22d1    # 2.674f

    const v4, -0x401b4396    # -1.787f

    const v5, 0x40a9999a    # 5.3f

    const v6, -0x3fa6d917    # -3.393f

    const v7, 0x40fb6c8b    # 7.857f

    const v8, -0x3f6872b0    # -4.736f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x417af9db    # 15.686f

    const v4, -0x3efc1062    # -8.246f

    const v5, 0x41d30419    # 26.377f

    const v6, -0x3e6ef3b6    # -18.131f

    const v7, 0x42107df4

    const v8, -0x3e18b439    # -28.912f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x40e91eb8    # 7.285f

    const v4, -0x3ed370a4    # -10.785f

    const v5, 0x417aa7f0    # 15.666f

    const v6, -0x3e21a3d7    # -27.795f

    const v7, 0x417aa7f0    # 15.666f

    const v8, -0x3db54dd3    # -50.674f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x4414c4dd

    const v4, 0x4478e8d5    # 995.638f

    const v5, 0x441305c3

    const v6, 0x4474a4cd

    const v7, 0x4410da3d

    const v8, 0x44718687

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x4412871b

    const v3, 0x4471f2a0

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3ecba9fc    # -11.271f

    const v4, -0x3ec5ef9e    # -11.629f

    const v5, -0x3e57e354    # -21.014f

    const v6, -0x3e72a1cb    # -17.671f

    const v7, -0x3de8cbc7

    const v8, -0x3e31e148    # -25.765f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3fa126e9    # -3.482f

    const v4, -0x402872b0    # -1.684f

    const v5, -0x3f20a3d7    # -6.98f

    const v6, -0x3f8b53f8    # -3.823f

    const v7, -0x3ed7fbe7    # -10.501f

    const v8, -0x3f377cee    # -6.266f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e3add2f    # -24.642f

    const v4, -0x3dfd74bc

    const v5, -0x3d80f9db    # -63.756f

    const v6, -0x3da91168

    const v7, -0x3d286560

    const v8, -0x3da91168

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3d6ae1cb

    const/4 v4, 0x0

    const/high16 v5, -0x3cf90000    # -135.0f

    const v6, 0x4271c396

    const/high16 v7, -0x3cf90000    # -135.0f

    const/high16 v8, 0x43070000    # 135.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42262c08    # 41.543f

    const v5, 0x419628f6    # 18.77f

    const v6, 0x429d63d7    # 78.695f

    const v7, 0x424122d1    # 48.284f

    const v8, 0x42ceec08

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3dc08312    # 0.094f

    const v4, 0x3d9fbe77    # 0.078f

    const v5, 0x3e408312    # 0.188f

    const v6, 0x3e21cac1    # 0.158f

    const v7, 0x3e90624e    # 0.282f

    const v8, 0x3e73b646    # 0.238f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3ef43958    # 0.477f

    const v4, 0x3ecac083    # 0.396f

    const v5, 0x3f74fdf4    # 0.957f

    const v6, 0x3f4a7efa    # 0.791f

    const v7, 0x3fb83127    # 1.439f

    const v8, 0x3f974bc7    # 1.182f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3f066666    # 0.525f

    const v4, 0x3edb22d1    # 0.428f

    const v5, 0x3f86a7f0    # 1.052f

    const v6, 0x3f5a9fbe    # 0.854f

    const v7, 0x3fca9fbe    # 1.583f

    const v8, 0x3fa33333    # 1.275f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3d656042    # 0.056f

    const v4, 0x3d3020c5    # 0.043f

    const v5, 0x3de147ae    # 0.11f

    const v6, 0x3db020c5    # 0.086f

    const v7, 0x3e29fbe7    # 0.166f

    const v8, 0x3e041893    # 0.129f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41b570a4    # 22.68f

    const v4, 0x418f24dd    # 17.893f

    const v5, 0x424d6f9e

    const v6, 0x41e5c8b4    # 28.723f

    const v7, 0x42a612f2

    const v8, 0x41e5c8b4    # 28.723f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3e7ef9db    # 0.249f

    const/4 v4, 0x0

    const v5, 0x3efa5e35    # 0.489f

    const v6, -0x43bb645a    # -0.012f

    const v7, 0x3f3ced91    # 0.738f

    const v8, -0x439a9fbe    # -0.014f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3fa3126f    # 1.274f

    const v4, -0x443b645a    # -0.006f

    const v5, 0x4022e148    # 2.545f

    const v6, -0x43126e98    # -0.029f

    const v7, 0x4073e76d    # 3.811f

    const v8, -0x4270a3d7    # -0.07f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3eac8b44    # 0.337f

    const v4, -0x43bb645a    # -0.012f

    const v5, 0x3f2c0831    # 0.672f

    const v6, -0x43439581    # -0.023f

    const v7, 0x3f80e560    # 1.007f

    const v8, -0x42e04189    # -0.039f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x422826e9

    const v4, -0x402e76c9    # -1.637f

    const v5, 0x429e4937

    const v6, -0x3e4c1893    # -22.488f

    const v7, 0x42cd8937

    const v8, -0x3da7e45a    # -54.027f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x405fef9e    # 3.499f

    const v4, -0x3fe8e560    # -2.361f

    const v5, 0x40de0419    # 6.938f

    const v6, -0x3f7353f8    # -4.396f

    const v7, 0x41249ba6    # 10.288f

    const v8, -0x3f41f3b6    # -5.939f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41858f5c    # 16.695f

    const v4, -0x3f09fbe7    # -7.688f

    const v5, 0x41d94fdf    # 27.164f

    const v6, -0x3e811687    # -15.932f

    const v7, 0x4216cdd3    # 37.701f

    const v8, -0x3e3024dd    # -25.982f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x40ef3333    # 7.475f

    const v4, -0x3edf1eb8    # -10.055f

    const v5, 0x41828f5c    # 16.32f

    const v6, -0x3e2c5810    # -26.457f

    const v7, 0x41828f5c    # 16.32f

    const v8, -0x3dbc1fbe

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x44169ba6

    const v4, 0x4478fa2d

    const v5, 0x4414bd81

    const v6, 0x4474daf2

    const v7, 0x4412871b

    const v8, 0x4471f2a0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x4414323d

    const v3, 0x44725e46

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3ec15810    # -11.916f

    const v4, -0x3ed36042    # -10.789f

    const v5, -0x3e52db23    # -21.643f

    const v6, -0x3e8a7efa    # -15.344f

    const v7, -0x3de26042

    const v8, -0x3e492d0e    # -22.853f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3f7322d1    # -4.402f

    const v4, -0x4010e560    # -1.868f

    const v5, -0x3ef2e979    # -8.818f

    const v6, -0x3f6eb021    # -4.541f

    const v7, -0x3eabc6a8    # -13.264f

    const v8, -0x3f08e560    # -7.722f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e3c45a2    # -24.466f

    const v4, -0x3df653f8    # -34.418f

    const v5, -0x3d7eac08

    const v6, -0x3d9c8419

    const v7, -0x3d23c937

    const v8, -0x3d9c8419

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3d6ae1cb

    const/4 v4, 0x0

    const/high16 v5, -0x3cf90000    # -135.0f

    const v6, 0x4271c396

    const/high16 v7, -0x3cf90000    # -135.0f

    const/high16 v8, 0x43070000    # 135.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x422f199a

    const v5, 0x41a6ba5e    # 20.841f

    const v6, 0x42a55a1d

    const v7, 0x42548b44

    const v8, 0x42d6af1b

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3e6147ae    # 0.22f

    const v4, 0x3e2e147b    # 0.17f

    const v5, 0x3ee147ae    # 0.44f

    const v6, 0x3eae147b    # 0.34f

    const v7, 0x3f2978d5    # 0.662f

    const v8, 0x3f020c4a    # 0.508f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3ec28f5c    # 0.38f

    const v4, 0x3e92f1aa    # 0.287f

    const v5, 0x3f4353f8    # 0.763f

    const v6, 0x3f11eb85    # 0.57f

    const v7, 0x3f92b021    # 1.146f

    const v8, 0x3f5a1cac    # 0.852f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/high16 v3, 0x41a40000    # 20.5f

    const v4, 0x41736042    # 15.211f

    const v5, 0x42363c6a

    const v6, 0x41c63b64    # 24.779f

    const v7, 0x429234bc

    const v8, 0x41d0fbe7    # 26.123f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3e041893    # 0.129f

    const v4, 0x3bc49ba6    # 0.006f

    const v5, 0x3e849ba6    # 0.259f

    const v6, 0x3c03126f    # 0.008f

    const v7, 0x3ec624dd    # 0.387f

    const v8, 0x3c656042    # 0.014f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3f7126e9    # 0.942f

    const v4, 0x3d3020c5    # 0.043f

    const v5, 0x3ff16873    # 1.886f

    const v6, 0x3dac0831    # 0.084f

    const v7, 0x403570a4    # 2.835f

    const v8, 0x3ddb22d1    # 0.107f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3f9eb852    # 1.24f

    const v4, 0x3d0f5c29    # 0.035f

    const v5, 0x401ef9db    # 2.484f

    const v6, 0x3d6147ae    # 0.055f

    const v7, 0x406ed917    # 3.732f

    const v8, 0x3d6147ae    # 0.055f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x4236a0c5

    const/4 v4, 0x0

    const v5, 0x42ac08b4

    const v6, -0x3e4aa3d7    # -22.67f

    const v7, 0x42dce560

    const v8, -0x3d9a8c4a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x408dba5e    # 4.429f

    const v4, -0x3fba7efa    # -3.086f

    const v5, 0x410ccccd    # 8.8f

    const v6, -0x3f4b3333    # -5.65f

    const v7, 0x4150e560    # 13.056f

    const v8, -0x3f1451ec    # -7.365f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x418d978d    # 17.699f

    const v4, -0x3f1bbe77    # -7.133f

    const v5, 0x41df978d    # 27.949f

    const v6, -0x3ea428f6    # -13.74f

    const v7, 0x421d178d

    const v8, -0x3e4778d5    # -23.066f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x40f51eb8    # 7.66f

    const v4, -0x3eeac083    # -9.328f

    const v5, 0x4187c083    # 16.969f

    const v6, -0x3e370419    # -25.123f

    const v7, 0x4187c083    # 16.969f

    const v8, -0x3dc2ea7f    # -47.271f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x44187042

    const v4, 0x44790b85    # 996.18f

    const v5, 0x44167385

    const v6, 0x447510c5

    const v7, 0x4414323d

    const v8, 0x44725e46

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x4415db23

    const v3, 0x4472c958

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3eb71eb8    # -12.555f

    const v4, -0x3ee0c083    # -9.953f

    const v5, -0x3e4de354    # -22.264f

    const v6, -0x3eaf8d50    # -13.028f

    const/high16 v7, -0x3ddc0000    # -41.0f

    const v8, -0x3e605a1d    # -19.956f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3f51f3b6    # -5.439f

    const v4, -0x3ffec8b4    # -2.019f

    const v5, -0x3ed1d70a    # -10.885f

    const v6, -0x3f545a1d    # -5.364f

    const v7, -0x3e7d20c5    # -16.359f

    const v8, -0x3ee872b0    # -9.472f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e3e0831    # -24.246f

    const v4, -0x3deff9db    # -36.006f

    const v5, -0x3d7d3b64

    const v6, -0x3d913b64

    const v7, -0x3d1fe2d1    # -112.057f

    const v8, -0x3d913b64

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3d6ae1cb

    const/4 v4, 0x0

    const/high16 v5, -0x3cf90000    # -135.0f

    const v6, 0x4271c396

    const/high16 v7, -0x3cf90000    # -135.0f

    const/high16 v8, 0x43070000    # 135.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42384189    # 46.064f

    const v5, 0x41b8999a    # 23.075f

    const v6, 0x42ad75c3    # 86.73f

    const v7, 0x426929fc    # 58.291f

    const v8, 0x42de3021

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3e90e560    # 0.283f

    const v4, 0x3e47ae14    # 0.195f

    const v5, 0x3f10e560    # 0.566f

    const v6, 0x3eca3d71    # 0.395f

    const v7, 0x3f59db23    # 0.851f

    const v8, 0x3f16872b    # 0.588f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3eb43958    # 0.352f

    const v4, 0x3e75c28f    # 0.24f

    const v5, 0x3f34bc6a    # 0.706f

    const v6, 0x3ef43958    # 0.477f

    const v7, 0x3f87ced9    # 1.061f

    const v8, 0x3f360419    # 0.711f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x418d7ae1    # 17.685f

    const v4, 0x413db646    # 11.857f

    const v5, 0x4219978d

    const v6, 0x419d3b64    # 19.654f

    const v7, 0x4273c7ae    # 60.945f

    const v8, 0x41af3f7d    # 21.906f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3eb1a9fc    # 0.347f

    const v4, 0x3d0f5c29    # 0.035f

    const v5, 0x3f322d0e    # 0.696f

    const v6, 0x3d79db23    # 0.061f

    const v7, 0x3f858106    # 1.043f

    const v8, 0x3dc08312    # 0.094f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3f32f1aa    # 0.699f

    const v4, 0x3d83126f    # 0.064f

    const v5, 0x3fb2b021    # 1.396f

    const v6, 0x3e083127    # 0.133f

    const v7, 0x400645a2    # 2.098f

    const v8, 0x3e3e76c9    # 0.186f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x40623d71    # 3.535f

    const v4, 0x3e8dd2f2    # 0.277f

    const v5, 0x40e3645a    # 7.106f

    const v6, 0x3ed81062    # 0.422f

    const v7, 0x412b645a    # 10.712f

    const v8, 0x3ed81062    # 0.422f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x423bc49c

    const/4 v4, 0x0

    const v5, 0x42b09062

    const v6, -0x3e404bc7    # -23.963f

    const v7, 0x42e0f127    # 112.471f

    const v8, -0x3d8eb852    # -60.32f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x40ae5e35    # 5.449f

    const v4, -0x3f815810    # -3.979f

    const v5, 0x412d8106    # 10.844f

    const v6, -0x3f1a4dd3    # -7.178f

    const v7, 0x4180df3b    # 16.109f

    const v8, -0x3eef8937    # -9.029f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x4195978d    # 18.699f

    const v4, -0x3f2d70a4    # -6.58f

    const v5, 0x41e5d70a    # 28.73f

    const v6, -0x3ec6fdf4    # -11.563f

    const v7, 0x42235810

    const v8, -0x3e5eb021    # -20.164f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x40fb3333    # 7.85f

    const v4, -0x3ef651ec    # -8.605f

    const v5, 0x418cef9e    # 17.617f

    const v6, -0x3e419fbe    # -23.797f

    const v7, 0x418cef9e    # 17.617f

    const v8, -0x3dc9ac08    # -45.582f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x441a42a0

    const v4, 0x44791ccd

    const v5, 0x4418273b

    const v6, 0x44754677

    const v7, 0x4415db23

    const v8, 0x4472c958

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x441781ba

    const v3, 0x447333e7

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3eace979    # -13.193f

    const v4, -0x3eee1062    # -9.121f

    const v5, -0x3e48e76d    # -22.887f

    const v6, -0x3ed45e35    # -10.727f

    const v7, -0x3dd5a3d7    # -42.59f

    const v8, -0x3e776666    # -17.075f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3f2da1cb    # -6.574f

    const v4, -0x3ff7ced9    # -2.128f

    const v5, -0x3eadc6a8    # -13.139f

    const v6, -0x3f368f5c    # -6.295f

    const v7, -0x3e6220c5    # -19.734f

    const v8, -0x3ec79581    # -11.526f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e3ffbe7    # -24.002f

    const v4, -0x3dea6560    # -37.401f

    const v5, -0x3d7c170a

    const v6, -0x3d87449c

    const v7, -0x3d1c9ba6    # -113.696f

    const v8, -0x3d87449c

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3f9851ec    # -3.62f

    const/4 v4, 0x0

    const v5, -0x3f196873    # -7.206f

    const v6, 0x3e158106    # 0.146f

    const v7, -0x3ed3eb85    # -10.755f

    const v8, 0x3eda1cac    # 0.426f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x42f8d4fe    # -0.033f

    const v4, 0x3b03126f    # 0.002f

    const v5, -0x4278d4fe    # -0.066f

    const v6, 0x3bc49ba6    # 0.006f

    const v7, -0x423126e9    # -0.101f

    const v8, 0x3c1374bc    # 0.009f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x407c28f6    # -1.03f

    const v4, 0x3da7ef9e    # 0.082f

    const v5, -0x3ffc28f6    # -2.06f

    const v6, 0x3e3020c5    # 0.172f

    const v7, -0x3fba9fbe    # -3.084f

    const v8, 0x3e8dd2f2    # 0.277f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3ef2e148    # -8.82f

    const v4, 0x3f649ba6    # 0.893f

    const v5, -0x3e74e354    # -17.389f

    const v6, 0x4029cac1    # 2.653f

    const v7, -0x3e32fbe7    # -25.627f

    const v8, 0x40a5eb85    # 5.185f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x41a0c49c    # -0.218f

    const v4, 0x3d89374c    # 0.067f

    const v5, -0x411fbe77    # -0.438f

    const v6, 0x3e041893    # 0.129f

    const v7, -0x40d81062    # -0.656f

    const v8, 0x3e4ac083    # 0.198f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x4129fbe7    # -0.418f

    const v4, 0x3e051eb8    # 0.13f

    const v5, -0x40ab4396    # -0.831f

    const v6, 0x3e8a3d71    # 0.27f

    const v7, -0x4060624e    # -1.247f

    const v8, 0x3ecf5c29    # 0.405f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3da6ed91

    const/high16 v4, 0x418c0000    # 17.5f

    const v5, -0x3d44f0a4    # -93.53f

    const v6, 0x4288d26f

    const v7, -0x3d44f0a4    # -93.53f

    const v8, 0x43008042

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42419581    # 48.396f

    const v5, 0x41cbcac1    # 25.474f

    const v6, 0x42b5ad0e

    const v7, 0x427ef3b6

    const v8, 0x42e5570a    # 114.67f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3e9374bc    # 0.288f

    const v4, 0x3e3851ec    # 0.18f

    const v5, 0x3f1374bc    # 0.576f

    const v6, 0x3eb8d4fe    # 0.361f

    const v7, 0x3f5db22d    # 0.866f

    const v8, 0x3f09fbe7    # 0.539f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3ec72b02    # 0.389f

    const v4, 0x3e73b646    # 0.238f

    const v5, 0x3f476c8b    # 0.779f

    const v6, 0x3ef22d0e    # 0.473f

    const v7, 0x3f95e354    # 1.171f

    const v8, 0x3f347ae1    # 0.705f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3f29ba5e    # 0.663f

    const v4, 0x3ecccccd    # 0.4f

    const v5, 0x3fa9fbe7    # 1.328f

    const v6, 0x3f4b851f    # 0.795f

    const v7, 0x3fffdf3b    # 1.999f

    const v8, 0x3f978d50    # 1.184f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3ced9168    # 0.029f

    const v4, 0x3c83126f    # 0.016f

    const v5, 0x3d6d9168    # 0.058f

    const v6, 0x3cfdf3b6    # 0.031f

    const v7, 0x3db22d0e    # 0.087f

    const v8, 0x3d48b439    # 0.049f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41609fbe    # 14.039f

    const v4, 0x4101999a    # 8.1f

    const v5, 0x41edc28f    # 29.72f

    const v6, 0x415be76d    # 13.744f

    const v7, 0x423a1168

    const v8, 0x41824bc7    # 16.287f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3e839581    # 0.257f

    const v4, 0x3d1fbe77    # 0.039f

    const v5, 0x3f041893    # 0.516f

    const v6, 0x3d9374bc    # 0.072f

    const v7, 0x3f45a1cb    # 0.772f

    const v8, 0x3ddf3b64    # 0.109f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3f45e354    # 0.773f

    const v4, 0x3de76c8b    # 0.113f

    const v5, 0x3fc5c28f    # 1.545f

    const v6, 0x3e6872b0    # 0.227f

    const v7, 0x40149ba6    # 2.322f

    const v8, 0x3ea6e979    # 0.326f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x40b79db2    # 5.738f

    const v4, 0x3f3df3b6    # 0.742f

    const v5, 0x4139645a    # 11.587f

    const v6, 0x3f90c49c    # 1.131f

    const v7, 0x418c374c    # 17.527f

    const v8, 0x3f90c49c    # 1.131f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x42403c6a

    const/4 v4, 0x0

    const v5, 0x42b47df4

    const v6, -0x3e371062    # -25.117f

    const v7, 0x42e45604    # 114.168f

    const v8, -0x3d844189    # -62.936f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x40d1d2f2    # 6.557f

    const v4, -0x3f5dfbe7    # -5.063f

    const v5, 0x4151374c    # 13.076f

    const v6, -0x3eef0e56    # -9.059f

    const v7, 0x419bac08    # 19.459f

    const v8, -0x3ecfced9    # -11.012f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x419d8b44    # 19.693f

    const v4, -0x3f3f020c    # -6.031f

    const v5, 0x41ec0c4a    # 29.506f

    const v6, -0x3ee9ae14    # -9.395f

    const v7, 0x4229926f

    const v8, -0x3e75c8b4    # -17.277f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x4100872b    # 8.033f

    const v4, -0x3f039db2    # -7.887f

    const v5, 0x41921062    # 18.258f

    const v6, -0x3e4c2b02    # -22.479f

    const v7, 0x41921062    # 18.258f

    const v8, -0x3dd0624e    # -43.904f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x441c123d

    const v4, 0x44792de3

    const v5, 0x4419d883

    const v6, 0x44757ba6

    const v7, 0x441781ba

    const v8, 0x447333e7

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x44192560

    const v3, 0x44739da2

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3ea2d0e5    # -13.824f

    const v4, -0x3efb47ae    # -8.295f

    const v5, -0x3e43fbe7    # -23.502f

    const v6, -0x3ef8fdf4    # -8.438f

    const v7, -0x3dcf5810

    const v8, -0x3e9c9ba6    # -14.212f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3f05d2f2    # -7.818f

    const v4, -0x3ff3851f    # -2.195f

    const v5, -0x3e866666    # -15.6f

    const v6, -0x3f141062    # -7.373f

    const v7, -0x3e44bc6a    # -23.408f

    const v8, -0x3ea0cccd    # -13.95f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e41dd2f    # -23.767f

    const v4, -0x3de5bf7d    # -38.563f

    const v5, -0x3d7b3d71    # -66.38f

    const v6, -0x3d7f7439

    const v7, -0x3d19fdf4

    const v8, -0x3d7f7439

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x405c8b44    # -1.277f

    const/4 v4, 0x0

    const v5, -0x3fdcbc6a    # -2.551f

    const v6, 0x3cac0831    # 0.021f

    const v7, -0x3f8b851f    # -3.82f

    const v8, 0x3d6978d5    # 0.057f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/high16 v3, -0x3e790000    # -16.875f

    const v4, 0x3ed78d50    # 0.421f

    const v5, -0x3dfc1062

    const v6, 0x408028f6    # 4.005f

    const v7, -0x3dc0e45a    # -47.777f

    const v8, 0x41229fbe    # 10.164f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x41420c4a    # -0.371f

    const v4, 0x3e1cac08    # 0.153f

    const v5, -0x40c1cac1    # -0.743f

    const v6, 0x3e9b22d1    # 0.303f

    const v7, -0x4071a9fc    # -1.112f

    const v8, 0x3eeb020c    # 0.459f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x426e978d    # -0.071f

    const v4, 0x3cfdf3b6    # 0.031f

    const v5, -0x41ee978d    # -0.142f

    const v6, 0x3d810625    # 0.063f

    const v7, -0x41a5e354    # -0.213f

    const v8, 0x3dbe76c9    # 0.093f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3dbefcee

    const v4, 0x41a4a9fc    # 20.583f

    const v5, -0x3d5bd893

    const v6, 0x4288e873

    const v7, -0x3d5bd893

    const v8, 0x42f873b6

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x424b4083    # 50.813f

    const v5, 0x41e09db2    # 28.077f

    const v6, 0x42be1f3b

    const v7, 0x428b1db2

    const v8, 0x42ec3127    # 118.096f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3e4ac083    # 0.198f

    const v4, 0x3de353f8    # 0.111f

    const v5, 0x3eca3d71    # 0.395f

    const v6, 0x3e645a1d    # 0.223f

    const v7, 0x3f17ced9    # 0.593f

    const v8, 0x3ea9fbe7    # 0.332f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3f08b439    # 0.534f

    const v4, 0x3e960419    # 0.293f

    const v5, 0x3f895810    # 1.073f

    const v6, 0x3f147ae1    # 0.58f

    const v7, 0x3fce5604    # 1.612f

    const v8, 0x3f5d70a4    # 0.865f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3f056042    # 0.521f

    const v4, 0x3e8ed917    # 0.279f

    const v5, 0x3f858106    # 1.043f

    const v6, 0x3f0e978d    # 0.557f

    const v7, 0x3fc8b439    # 1.568f

    const v8, 0x3f53f7cf    # 0.828f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3e6f9db2    # 0.234f

    const v4, 0x3df7ced9    # 0.121f

    const v5, 0x3ef0a3d7    # 0.47f

    const v6, 0x3e71a9fc    # 0.236f

    const v7, 0x3f343958    # 0.704f

    const v8, 0x3eb5c28f    # 0.355f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41274bc7    # 10.456f

    const v4, 0x40aa4dd3    # 5.322f

    const v5, 0x41adcac1    # 21.724f

    const v6, 0x41151eb8    # 9.32f

    const v7, 0x42066d91

    const v8, 0x413bf7cf    # 11.748f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3edb22d1    # 0.428f

    const v4, 0x3db43958    # 0.088f

    const v5, 0x3f5be76d    # 0.859f

    const v6, 0x3e2c0831    # 0.168f

    const v7, 0x3fa4dd2f    # 1.288f

    const v8, 0x3e810625    # 0.252f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3f18d4fe    # 0.597f

    const v4, 0x3deb851f    # 0.115f

    const v5, 0x3f9872b0    # 1.191f

    const v6, 0x3e6f9db2    # 0.234f

    const v7, 0x3fe53f7d    # 1.791f

    const v8, 0x3eaf1aa0    # 0.342f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x40fc0831    # 7.876f

    const v4, 0x3fb74bc7    # 1.432f

    const v5, 0x417fd2f2    # 15.989f

    const v6, 0x400ba5e3    # 2.182f

    const v7, 0x41c23958    # 24.278f

    const v8, 0x400ba5e3    # 2.182f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x42440d50    # 49.013f

    const/4 v4, 0x0

    const v5, 0x42b7d810

    const v6, -0x3e2f0c4a    # -26.119f

    const v7, 0x42e72666

    const v8, -0x3d7d9b23

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x40f7ae14    # 7.74f

    const v4, -0x3f34ed91    # -6.346f

    const v5, 0x41778106    # 15.469f

    const v6, -0x3ecb2f1b    # -11.301f

    const v7, 0x41b8872b    # 23.066f

    const v8, -0x3eaaf9db    # -13.314f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41a574bc    # 20.682f

    const v4, -0x3f508312    # -5.484f

    const v5, 0x41f2374c    # 30.277f

    const v6, -0x3f184189    # -7.242f

    const v7, 0x422fbe77    # 43.936f

    const v8, -0x3e9970a4    # -14.41f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41038106    # 8.219f

    const v4, -0x3f1a6e98    # -7.174f

    const v5, 0x41972f1b    # 18.898f

    const v6, -0x3e56a7f0    # -21.168f

    const v7, 0x41972f1b    # 18.898f

    const v8, -0x3dd70e56    # -42.236f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x441dded9

    const v4, 0x44793ed9

    const v5, 0x441b86d9

    const v6, 0x4475b083

    const v7, 0x44192560

    const v8, 0x44739da2

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x441ac5e3

    const v3, 0x447406b8

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e98c083    # -14.453f

    const v4, -0x3f10bc6a    # -7.477f

    const v5, -0x3e3f1893    # -24.113f

    const v6, -0x3f3a978d    # -6.169f

    const v7, -0x3dc91581    # -45.729f

    const v8, -0x3eca0831    # -11.373f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3eed6873    # -9.162f

    const v4, -0x3ff22d0e    # -2.216f

    const v5, -0x3e6e0419    # -18.248f

    const v6, -0x3ef5d2f2    # -8.636f

    const v7, -0x3e252b02    # -27.354f

    const v8, -0x3e79c49c    # -16.779f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e46c083    # -23.156f

    const v4, -0x3de4c7ae    # -38.805f

    const v5, -0x3d7d8d50    # -65.224f

    const v6, -0x3d7dfb64

    const v7, -0x3d1d072b    # -113.486f

    const v8, -0x3d7c374c

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x40eac083    # -0.583f

    const v4, -0x43bb645a    # -0.012f

    const v5, -0x406a9fbe    # -1.167f

    const v6, -0x4374bc6a    # -0.017f

    const v7, -0x401fbe77    # -1.752f

    const v8, -0x434bc6a8    # -0.022f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x417ced91    # -0.256f

    const v4, -0x457ced91    # -0.001f

    const v5, -0x40fdb22d    # -0.509f

    const v6, -0x43dc28f6    # -0.01f

    const v7, -0x40bc28f6    # -0.765f

    const v8, -0x43dc28f6    # -0.01f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x42f4bc6a    # -0.034f

    const/4 v4, 0x0

    const v5, -0x4276c8b4    # -0.067f

    const v6, 0x3a83126f    # 0.001f

    const v7, -0x423126e9    # -0.101f

    const v8, 0x3a83126f    # 0.001f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x41fced91    # -0.128f

    const/4 v4, 0x0

    const v5, -0x417ced91    # -0.256f

    const v6, -0x447ced91    # -0.004f

    const v7, -0x413b645a    # -0.384f

    const v8, -0x447ced91    # -0.004f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e563d71    # -21.22f

    const/4 v4, 0x0

    const v5, -0x3ddac9ba

    const v6, 0x40a020c5    # 5.004f

    const v7, -0x3d935604    # -59.166f

    const v8, 0x415df7cf    # 13.873f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3dcd71aa    # -44.639f

    const v4, 0x41b03127    # 22.024f

    const v5, -0x3d694ccd    # -75.35f

    const v6, 0x4287f958    # 67.987f

    const v7, -0x3d694ccd    # -75.35f

    const v8, 0x42f2420c

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x4255322d    # 53.299f

    const v5, 0x41f720c5    # 30.891f

    const v6, 0x42c6c106

    const v7, 0x42977b64

    const v8, 0x42f2a5e3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3cac0831    # 0.021f

    const v4, 0x3c449ba6    # 0.012f

    const v5, 0x3d27ef9e    # 0.041f

    const v6, 0x3cac0831    # 0.021f

    const v7, 0x3d7df3b6    # 0.062f

    const v8, 0x3cfdf3b6    # 0.031f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3f483127    # 0.782f

    const v4, 0x3ec41893    # 0.383f

    const v5, 0x3fc8d4fe    # 1.569f

    const v6, 0x3f410625    # 0.754f

    const v7, 0x4016f9db    # 2.359f

    const v8, 0x3f8f7cee    # 1.121f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3e8c49ba    # 0.274f

    const v4, 0x3e041893    # 0.129f

    const v5, 0x3f0c49ba    # 0.548f

    const v6, 0x3e851eb8    # 0.26f

    const v7, 0x3f52f1aa    # 0.824f

    const v8, 0x3ec51eb8    # 0.385f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3f0fdf3b    # 0.562f

    const v4, 0x3e841893    # 0.258f

    const v5, 0x3f90624e    # 1.128f

    const v6, 0x3f018937    # 0.506f

    const v7, 0x3fd8d4fe    # 1.694f

    const v8, 0x3f418937    # 0.756f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3efbe76d    # 0.492f

    const v4, 0x3e5e353f    # 0.217f

    const v5, 0x3f7ba5e3    # 0.983f

    const v6, 0x3edf3b64    # 0.436f

    const v7, 0x3fbd4fdf    # 1.479f

    const v8, 0x3f256042    # 0.646f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3ec3126f    # 0.381f

    const v4, 0x3e25e354    # 0.162f

    const v5, 0x3f439581    # 0.764f

    const v6, 0x3ea2d0e5    # 0.318f

    const v7, 0x3f92b021    # 1.146f

    const v8, 0x3ef43958    # 0.477f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3f2b851f    # 0.67f

    const v4, 0x3e8ed917    # 0.279f

    const v5, 0x3fabc6a8    # 1.342f

    const v6, 0x3f0e978d    # 0.557f

    const v7, 0x400126e9    # 2.018f

    const v8, 0x3f52f1aa    # 0.824f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3e7ae148    # 0.245f

    const v4, 0x3dc8b439

    const v5, 0x3efc6a7f    # 0.493f

    const v6, 0x3e418937    # 0.189f

    const v7, 0x3f3d2f1b    # 0.739f

    const v8, 0x3e91eb85    # 0.285f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3f4ccccd    # 0.8f

    const v4, 0x3ea04189    # 0.313f

    const v5, 0x3fcced91    # 1.601f

    const v6, 0x3f1e76c9    # 0.619f

    const v7, 0x401a1cac    # 2.408f

    const v8, 0x3f6a7efa    # 0.916f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3e2d0e56    # 0.169f

    const v4, 0x3d810625    # 0.063f

    const v5, 0x3ead9168    # 0.339f

    const v6, 0x3df7ced9    # 0.121f

    const v7, 0x3f020c4a    # 0.508f

    const v8, 0x3e3a5e35    # 0.182f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3f5eb852    # 0.87f

    const v4, 0x3ea1cac1    # 0.316f

    const v5, 0x3fdf1aa0    # 1.743f

    const v6, 0x3f208312    # 0.627f

    const v7, 0x4027df3b    # 2.623f

    const v8, 0x3f6c8b44    # 0.924f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3e25e354    # 0.162f

    const v4, 0x3d6978d5    # 0.057f

    const v5, 0x3ea76c8b    # 0.327f

    const v6, 0x3ddb22d1    # 0.107f

    const v7, 0x3efae148    # 0.49f

    const v8, 0x3e25e354    # 0.162f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3f5f7cee    # 0.873f

    const v4, 0x3e960419    # 0.293f

    const/high16 v5, 0x3fe00000    # 1.75f

    const v6, 0x3f147ae1    # 0.58f

    const v7, 0x402872b0    # 2.632f

    const v8, 0x3f5ae148    # 0.855f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3e6e978d    # 0.233f

    const v4, 0x3d9374bc    # 0.072f

    const v5, 0x3ef020c5    # 0.469f

    const v6, 0x3e10624e    # 0.141f

    const v7, 0x3f33b646    # 0.702f

    const v8, 0x3e5a1cac    # 0.213f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3f4c8b44    # 0.799f

    const v4, 0x3e79db23    # 0.244f

    const v5, 0x3fccac08    # 1.599f

    const v6, 0x3ef7ced9    # 0.484f

    const v7, 0x4019db23    # 2.404f

    const v8, 0x3f370a3d    # 0.715f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3ed2f1aa    # 0.412f

    const v4, 0x3def9db2    # 0.117f

    const v5, 0x3f5374bc    # 0.826f

    const v6, 0x3e6872b0    # 0.227f

    const v7, 0x3f9e978d    # 1.239f

    const v8, 0x3eae147b    # 0.34f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3f1e76c9    # 0.619f

    const v4, 0x3e2e147b    # 0.17f

    const v5, 0x3f9e5604    # 1.237f

    const v6, 0x3eb020c5    # 0.344f

    const v7, 0x3fee147b    # 1.86f

    const v8, 0x3f010625    # 0.504f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3f37ced9    # 0.718f

    const v4, 0x3e408312    # 0.188f

    const v5, 0x3fb851ec    # 1.44f

    const v6, 0x3eb8d4fe    # 0.361f

    const v7, 0x400a6e98    # 2.163f

    const v8, 0x3f0978d5    # 0.537f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3e9eb852    # 0.31f

    const v4, 0x3d978d50    # 0.074f

    const v5, 0x3f1df3b6    # 0.617f

    const v6, 0x3e1db22d    # 0.154f

    const v7, 0x3f6d9168    # 0.928f

    const v8, 0x3e6872b0    # 0.227f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x411f2b02    # 9.948f

    const v4, 0x40158106    # 2.336f

    const v5, 0x41a28d50    # 20.319f

    const v6, 0x4064dd2f    # 3.576f

    const v7, 0x41f7d70a    # 30.98f

    const v8, 0x4064dd2f    # 3.576f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x42471687    # 49.772f

    const/4 v4, 0x0

    const v5, 0x42ba7df4

    const v6, -0x3e287efa    # -26.938f

    const v7, 0x42e95062

    const v8, -0x3d79f22d    # -67.027f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41101062    # 9.004f

    const v4, -0x3f04bc6a    # -7.852f

    const v5, 0x41904bc7    # 18.037f

    const v6, -0x3ea05604    # -13.979f

    const v7, 0x41d7a7f0    # 26.957f

    const v8, -0x3e7fe354    # -16.014f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41ad4bc7    # 21.662f

    const v4, -0x3f61d2f2    # -4.943f

    const v5, 0x41f85810    # 31.043f

    const v6, -0x3f5c9375    # -5.107f

    const v7, 0x4235e24e    # 45.471f

    const v8, -0x3ec6e979    # -11.568f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41066666    # 8.4f

    const v4, -0x3f312f1b    # -6.463f

    const v5, 0x419c3b64    # 19.529f

    const v6, -0x3e611062    # -19.867f

    const v7, 0x419c3b64    # 19.529f

    const v8, -0x3dddb021    # -40.578f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x441fa7be

    const v4, 0x44795000    # 997.25f

    const v5, 0x441d31db

    const v6, 0x4475e53f

    const v7, 0x441ac5e3

    const v8, 0x447406b8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x441c625e

    const v3, 0x44746fbe

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e8ecccd    # -15.075f

    const v4, -0x3f2ab852    # -6.665f

    const v5, -0x3e3a3d71    # -24.72f

    const v6, -0x3f84fdf4    # -3.922f

    const v7, -0x3dc2e354    # -47.278f

    const v8, -0x3ef70625    # -8.561f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3ed68312    # -10.593f

    const v4, -0x3ff3e76d    # -2.189f

    const v5, -0x3e577efa    # -21.063f

    const v6, -0x3ede9ba6    # -10.087f

    const v7, -0x3e03bc6a    # -31.533f

    const v8, -0x3e5ff5c3    # -20.005f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e4f1687    # -22.114f

    const v4, -0x3de83127    # -37.952f

    const v5, -0x3d872e14

    const v6, -0x3d7fbb64

    const v7, -0x3d26c9ba

    const v8, -0x3d7a3ae1

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x4220c49c    # -0.109f

    const v4, -0x441a9fbe    # -0.007f

    const v5, -0x419fbe77    # -0.219f

    const v6, -0x439a9fbe    # -0.014f

    const v7, -0x41581062    # -0.328f

    const v8, -0x4353f7cf    # -0.021f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x40ef9db2    # -0.564f

    const v4, -0x42fced91    # -0.032f

    const v5, -0x406f5c29    # -1.13f

    const v6, -0x428624dd    # -0.061f

    const v7, -0x4026e979    # -1.696f

    const v8, -0x4251eb85    # -0.085f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x40aac083    # -0.833f

    const v4, -0x42dc28f6    # -0.04f

    const v5, -0x402a7efa    # -1.668f

    const v6, -0x426e978d    # -0.071f

    const v7, -0x3fdfbe77    # -2.504f

    const v8, -0x423d70a4    # -0.095f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x42bb645a    # -0.048f

    const v4, -0x457ced91    # -0.001f

    const v5, -0x42395810    # -0.097f

    const v6, -0x44bb645a    # -0.003f

    const v7, -0x41ea7efa    # -0.146f

    const v8, -0x447ced91    # -0.004f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x4057ef9e    # -1.313f

    const v4, -0x42e872b0    # -0.037f

    const v5, -0x3fd79db2    # -2.631f

    const v6, -0x42820c4a    # -0.062f

    const v7, -0x3f83020c    # -3.953f

    const v8, -0x42820c4a    # -0.062f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e439581    # -23.552f

    const/4 v4, 0x0

    const v5, -0x3dc92d0e

    const v6, 0x40c56042    # 6.168f

    const v7, -0x3d7e0bc7

    const v8, 0x41879ba6    # 16.951f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3dda2f1b

    const v4, 0x41b85810    # 23.043f

    const v5, -0x3d74fbe7

    const v6, 0x42868d50    # 67.276f

    const v7, -0x3d74fbe7

    const v8, 0x42ec224e

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42951e35

    const v5, 0x4271c396

    const/high16 v6, 0x43070000    # 135.0f

    const/high16 v7, 0x43070000    # 135.0f

    const/high16 v8, 0x43070000    # 135.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x42495f3b

    const/4 v4, 0x0

    const v5, 0x42bc7cee

    const v6, -0x3e23872b    # -27.559f

    const v7, 0x42eae873

    const v8, -0x3d772e14    # -68.41f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41255810    # 10.334f

    const v4, -0x3ee6f1aa    # -9.566f

    const v5, 0x41a5fbe7    # 20.748f

    const v6, -0x3e7728f6    # -17.105f

    const v7, 0x41f8b439    # 31.088f

    const v8, -0x3e670c4a    # -19.119f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41b50e56    # 22.632f

    const v4, -0x3f73020c    # -4.406f

    const v5, 0x41fe6873    # 31.801f

    const v6, -0x3fc08312    # -2.992f

    const v7, 0x423bf3b6

    const/high16 v8, -0x3ef40000    # -8.75f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41094fdf    # 8.582f

    const v4, -0x3f479db2    # -5.762f

    const v5, 0x41a14396    # 20.158f

    const v6, -0x3e6b5c29    # -18.58f

    const v7, 0x41a14396    # 20.158f

    const v8, -0x3de43e77    # -38.939f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x44216c7b

    const v4, 0x4479619a

    const v5, 0x441ed8d5    # 635.388f

    const v6, 0x44761a5e

    const v7, 0x441c625e

    const v8, 0x44746fbe

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x441dfa3d

    const v3, 0x4474d77d

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e84f5c3    # -15.69f

    const v4, -0x3f4472b0    # -5.861f

    const v5, -0x3e3572b0    # -25.319f

    const v6, -0x4026c8b4    # -1.697f

    const v7, -0x3dbcc28f    # -48.81f

    const v8, -0x3f471aa0    # -5.778f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3ebe1062    # -12.121f

    const v4, -0x3ff89375    # -2.116f

    const v5, -0x3e3f9375    # -24.053f

    const v6, -0x3ec33f7d    # -11.797f

    const v7, -0x3df025e3

    const v8, -0x3e4270a4    # -23.695f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e54a7f0    # -21.418f

    const v4, -0x3deaeb85    # -37.27f

    const v5, -0x3d8f8a3d

    const v6, -0x3d82a5e3

    const v7, -0x3d2daf9e

    const v8, -0x3d79676d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x411b22d1    # -0.447f

    const v4, -0x42d81062    # -0.041f

    const v5, -0x409ae148    # -0.895f

    const v6, -0x42560419    # -0.083f

    const v7, -0x40541893    # -1.343f

    const v8, -0x420a3d71    # -0.12f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x41a2d0e5    # -0.216f

    const v4, -0x4374bc6a    # -0.017f

    const v5, -0x4122d0e5    # -0.432f

    const v6, -0x43020c4a    # -0.031f

    const v7, -0x40da9fbe    # -0.646f

    const v8, -0x42bf7cee    # -0.047f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3fa147ae    # -3.48f

    const v4, -0x417851ec    # -0.265f

    const v5, -0x3f2051ec    # -6.99f

    const v6, -0x41322d0e    # -0.402f

    const v7, -0x3ed78d50    # -10.528f

    const v8, -0x41322d0e    # -0.402f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e35b852    # -25.285f

    const/4 v4, 0x0

    const v5, -0x3dbc25e3

    const v6, 0x40e38d50    # 7.111f

    const v7, -0x3d759fbe

    const v8, 0x419b5810    # 19.418f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x4222d0e5    # -0.108f

    const v4, 0x3d851eb8    # 0.065f

    const v5, -0x41a0c49c    # -0.218f

    const v6, 0x3e041893    # 0.129f

    const v7, -0x41589375    # -0.327f

    const v8, 0x3e47ae14    # 0.195f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x41e66666    # -0.15f

    const v4, 0x3dbc6a7f    # 0.092f

    const v5, -0x41676c8b    # -0.298f

    const v6, 0x3e408312    # 0.188f

    const v7, -0x411a9fbe    # -0.448f

    const v8, 0x3e8f5c29    # 0.28f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3de54189    # -38.686f

    const v4, 0x41bdeb85    # 23.74f

    const v5, -0x3d7f0312

    const v6, 0x4284d99a

    const v7, -0x3d7f0312

    const v8, 0x42e64831

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42951e35

    const v5, 0x4271c396

    const/high16 v6, 0x43070000    # 135.0f

    const/high16 v7, 0x43070000    # 135.0f

    const/high16 v8, 0x43070000    # 135.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x424adb23    # 50.714f

    const/4 v4, 0x0

    const v5, 0x42bdc72b    # 94.889f

    const v6, -0x3e203f7d    # -27.969f

    const v7, 0x42ebec08

    const v8, -0x3d755d2f    # -69.318f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x413ba9fc    # 11.729f

    const v4, -0x3ec83958    # -11.486f

    const v5, 0x41bcc49c    # 23.596f

    const v6, -0x3e5a6873    # -20.699f

    const v7, 0x420dcfdf    # 35.453f

    const v8, -0x3e4ad0e5    # -22.648f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41bcbc6a    # 23.592f

    const/high16 v4, -0x3f880000    # -3.875f

    const v5, 0x42023333    # 32.55f

    const v6, -0x409a1cac    # -0.898f

    const v7, 0x4241f4bc

    const v8, -0x3f412f1b    # -5.963f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x410c3127    # 8.762f

    const v4, -0x3f5dd2f2    # -5.068f

    const v5, 0x41a63b64    # 20.779f

    const v6, -0x3e758b44    # -17.307f

    const v7, 0x41a63b64    # 20.779f

    const v8, -0x3deaba5e    # -37.318f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x44232c19

    const v4, 0x44797344

    const v5, 0x44207b23

    const v6, 0x44764eb8

    const v7, 0x441dfa3d

    const v8, 0x4474d77d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x441f8c6a

    const v3, 0x44753de3

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e7da1cb    # -16.296f

    const v4, -0x3f5dc28f    # -5.07f

    const v5, -0x3e30ba5e    # -25.909f

    const v6, 0x3efced91    # 0.494f

    const v7, -0x3db6b852    # -50.32f

    const v8, -0x3fbdc28f    # -3.035f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3ea41cac    # -13.743f

    const v4, -0x40004189    # -1.998f

    const v5, -0x3e2645a2    # -27.216f

    const v6, -0x3ea39168    # -13.777f

    const v7, -0x3ddd73b6

    const v8, -0x3e213f7d    # -27.844f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e5ae354    # -20.639f

    const v4, -0x3defd70a    # -36.04f

    const v5, -0x3d9a54fe    # -57.417f

    const v6, -0x3d896873

    const v7, -0x3d370937

    const v8, -0x3d7a0b44

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3f49d2f2    # -5.693f

    const v4, -0x40c624dd    # -0.726f

    const v5, -0x3ec86e98    # -11.473f

    const v6, -0x40756042    # -1.083f

    const v7, -0x3e756e98    # -17.321f

    const v8, -0x40756042    # -1.083f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e265a1d    # -27.206f

    const/4 v4, 0x0

    const v5, -0x3dadcac1

    const v6, 0x4103e354    # 8.243f

    const v7, -0x3d6c872b    # -73.736f

    const v8, 0x41b2ae14    # 22.335f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3dedbf7d    # -36.563f

    const v4, 0x41c13b64    # 24.154f

    const v5, -0x3d8d3d71    # -60.69f

    const v6, 0x428339db

    const v7, -0x3d8d3d71    # -60.69f

    const v8, 0x42e16d91

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42951e35

    const v5, 0x4271c396

    const/high16 v6, 0x43070000    # 135.0f

    const/high16 v7, 0x43070000    # 135.0f

    const/high16 v8, 0x43070000    # 135.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x424b7efa    # 50.874f

    const/4 v4, 0x0

    const v5, 0x42be5581    # 95.167f

    const v6, -0x3e1ed70a    # -28.145f

    const v7, 0x42ec5c29    # 118.18f

    const v8, -0x3d7494fe    # -69.709f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x4152e560    # 13.181f

    const v4, -0x3ea676c9    # -13.596f

    const v5, 0x41d48f5c    # 26.57f

    const v6, -0x3e39a7f0    # -24.793f

    const v7, 0x422027f0

    const v8, -0x3e2aef9e    # -26.633f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41c44bc7    # 24.537f

    const v4, -0x3fa978d5    # -3.352f

    const v5, 0x420527f0

    const v6, 0x3f94bc6a    # 1.162f

    const v7, 0x4247e042

    const v8, -0x3fb21cac    # -3.217f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x410f020c    # 8.938f

    const v4, -0x3f73be77    # -4.383f

    const v5, 0x41ab20c5    # 21.391f

    const v6, -0x3e7f978d    # -16.051f

    const v7, 0x41ab20c5    # 21.391f

    const v8, -0x3df11fbe

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x4424e571

    const v4, 0x4479847b    # 998.07f

    const v5, 0x4422177d

    const v6, 0x4476827f

    const v7, 0x441f8c6a

    const v8, 0x44753de3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x442117be

    const v3, 0x4475a27f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e78dd2f    # -16.892f

    const v4, -0x3f769fbe    # -4.293f

    const v5, -0x3e2c147b    # -26.49f

    const v6, 0x40296873    # 2.647f

    const v7, -0x3db0c7ae    # -51.805f

    const v8, -0x41516873    # -0.341f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e889ba6    # -15.462f

    const v4, -0x40151eb8    # -1.835f

    const v5, -0x3e0b9581    # -30.552f

    const v6, -0x3e7f45a2    # -16.091f

    const v7, -0x3dc9cac1

    const v8, -0x3dfe1062

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e6320c5    # -19.609f

    const v4, -0x3df8147b    # -33.98f

    const v5, -0x3da99db2    # -53.596f

    const v6, -0x3d958937

    const v7, -0x3d44b4bc

    const v8, -0x3d7ccb44

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3f056042    # -7.832f

    const v4, -0x404c28f6    # -1.405f

    const v5, -0x3e829ba6    # -15.837f

    const v6, -0x3ffa9fbe    # -2.084f

    const v7, -0x3e404dd3    # -23.962f

    const v8, -0x3ffa9fbe    # -2.084f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e1ab021    # -28.664f

    const/4 v4, 0x0

    const v5, -0x3da2ec8b

    const v6, 0x41127ae1    # 9.155f

    const v7, -0x3d65c72b    # -77.111f

    const v8, 0x41c55a1d    # 24.669f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x41cbc6a8    # -0.176f

    const/high16 v4, 0x3e000000    # 0.125f

    const v5, -0x414ac083    # -0.354f

    const v6, 0x3e7be76d    # 0.246f

    const v7, -0x40f851ec    # -0.53f

    const v8, 0x3ebdf3b6    # 0.371f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x438a3d71    # -0.015f

    const v4, 0x3c343958    # 0.011f

    const v5, -0x43126e98    # -0.029f

    const v6, 0x3cac0831    # 0.021f

    const v7, -0x42cbc6a8    # -0.044f

    const v8, 0x3d03126f    # 0.032f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3df6b127    # -34.327f

    const v4, 0x41c3d0e5    # 24.477f

    const v5, -0x3d9d26e9

    const v6, 0x42813d71    # 64.62f

    const v7, -0x3d9d26e9

    const v8, 0x42dbfc6a    # 109.993f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42951e35

    const v5, 0x4271c396

    const/high16 v6, 0x43070000    # 135.0f

    const/high16 v7, 0x43070000    # 135.0f

    const/high16 v8, 0x43070000    # 135.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x424b4ac1

    const/4 v4, 0x0

    const v5, 0x42be28f6    # 95.08f

    const v6, -0x3e1f47ae    # -28.09f

    const v7, 0x42ec38d5    # 118.111f

    const v8, -0x3d74d3f8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x416b0625    # 14.689f

    const v4, -0x3e821893    # -15.869f

    const v5, 0x41ed45a2    # 29.659f

    const v6, -0x3e15147b    # -29.365f

    const v7, 0x423350e5

    const v8, -0x3e078d50    # -31.056f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41cbbc6a    # 25.467f

    const v4, -0x3fca4dd3    # -2.839f

    const v5, 0x42080f5c    # 34.015f

    const v6, 0x404c1893    # 3.189f

    const v7, 0x424db22d    # 51.424f

    const v8, -0x40fba5e3    # -0.517f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x4111c6a8    # 9.111f

    const v4, -0x3f926e98    # -3.712f

    const v5, 0x41afed91    # 21.991f

    const v6, -0x3e92e979    # -14.818f

    const v7, 0x41afed91    # 21.991f

    const v8, -0x3df7676d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x4426972b    # 666.362f

    const v4, 0x44799581

    const v5, 0x4423accd    # 654.7f

    const v6, 0x4476b550

    const v7, 0x442117be

    const v8, 0x4475a27f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x44229a5e

    const v3, 0x447604dd

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e743127    # -17.476f

    const v4, -0x3f9de354    # -3.533f

    const v5, -0x3e27872b    # -27.059f

    const v6, 0x409820c5    # 4.754f

    const v7, -0x3daaf7cf    # -53.258f

    const v8, 0x4012e148    # 2.295f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e75c083    # -17.281f

    const v4, -0x402f3b64    # -1.631f

    const v5, -0x3df7b958    # -34.069f

    const v6, -0x3e69c8b4    # -18.777f

    const v7, -0x3db51eb8    # -50.72f

    const v8, -0x3de98312

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e6b6c8b    # -18.572f

    const v4, -0x3e037cee    # -31.564f

    const v5, -0x3db99375

    const v6, -0x3da45a1d

    const v7, -0x3d534ed9    # -86.346f

    const v8, -0x3d82e873

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3ee05a1d    # -9.978f

    const v4, -0x3fea8f5c    # -2.335f

    const v5, -0x3e5df9db    # -20.253f

    const v6, -0x3fa34396    # -3.449f

    const v7, -0x3e0a4fdf    # -30.711f

    const v8, -0x3fa34396    # -3.449f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e0e0c4a    # -30.244f

    const/4 v4, 0x0

    const v5, -0x3d973439

    const v6, 0x41232f1b    # 10.199f

    const v7, -0x3d5ea24e

    const v8, 0x41da8106    # 27.313f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3dfd8f5c    # -32.61f

    const v4, 0x41c526e9    # 24.644f

    const v5, -0x3da93f7d    # -53.688f

    const v6, 0x427ef7cf    # 63.742f

    const v7, -0x3da93f7d    # -53.688f

    const v8, 0x42d788b4

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42951e35

    const v5, 0x4271c396

    const/high16 v6, 0x43070000    # 135.0f

    const/high16 v7, 0x43070000    # 135.0f

    const/high16 v8, 0x43070000    # 135.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x424a24dd    # 50.536f

    const/4 v4, 0x0

    const v5, 0x42bd27f0

    const v6, -0x3e21d0e5    # -27.773f

    const v7, 0x42eb6f9e

    const v8, -0x3d763ae1

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41821893    # 16.262f

    const v4, -0x3e6dc083    # -18.281f

    const v5, 0x42037cee

    const v6, -0x3df629fc    # -34.459f

    const v7, 0x42475c29    # 49.84f

    const v8, -0x3df025e3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41d30419    # 26.377f

    const v4, -0x3fea7efa    # -2.336f

    const v5, 0x420ae76d

    const v6, 0x40a58106    # 5.172f

    const v7, 0x4253645a    # 52.848f

    const/high16 v8, 0x40080000    # 2.125f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41147efa    # 9.281f

    const v4, -0x3fbc7ae1    # -3.055f

    const v5, 0x41b4a3d7    # 22.58f

    const v6, -0x3ea63127    # -13.613f

    const v7, 0x41b4a3d7    # 22.58f

    const v8, -0x3dfd8c4a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x44283f7d

    const v4, 0x4479a625

    const v5, 0x44253948

    const v6, 0x4476e6fa

    const v7, 0x44229a5e

    const v8, 0x447604dd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x442411ba

    const v3, 0x4476646a

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e6fac08    # -18.041f

    const v4, -0x3fcd1eb8    # -2.795f

    const v5, -0x3e231eb8    # -27.61f

    const v6, 0x40d99168    # 6.799f

    const v7, -0x3da554fe    # -54.667f

    const v8, 0x409b53f8    # 4.854f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e667ae1    # -19.19f

    const v4, -0x404e76c9    # -1.387f

    const v5, -0x3de90937

    const v6, -0x3e510c4a    # -21.869f

    const v7, -0x3d9f999a    # -56.1f

    const v8, -0x3dd31cac    # -43.222f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e74f5c3    # -17.38f

    const v4, -0x3e1aced9    # -28.649f

    const v5, -0x3dcb851f    # -45.12f

    const v6, -0x3db6bf7d    # -50.313f

    const v7, -0x3d63f4bc

    const v8, -0x3d90cac1

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3ebb2b02    # -12.302f

    const v4, -0x3f9676c9    # -3.649f

    const v5, -0x3e374bc7    # -25.088f

    const v6, -0x3f541893    # -5.372f

    const v7, -0x3de772b0    # -38.138f

    const v8, -0x3f541893    # -5.372f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e04147b    # -31.49f

    const/4 v4, 0x0

    const v5, -0x3d8dfefa    # -60.501f

    const v6, 0x4131126f    # 11.067f

    const v7, -0x3d5920c5

    const v8, 0x41ebe979    # 29.489f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e07d4fe    # -31.021f

    const v4, 0x41c5e148    # 24.735f

    const v5, -0x3db45f3b

    const v6, 0x427b624e    # 62.846f

    const v7, -0x3db45f3b

    const v8, 0x42d33646

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42951e35

    const v5, 0x4271c396

    const/high16 v6, 0x43070000    # 135.0f

    const/high16 v7, 0x43070000    # 135.0f

    const/high16 v8, 0x43070000    # 135.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x42481ba6    # 50.027f

    const/4 v4, 0x0

    const v5, 0x42bb645a    # 93.696f

    const v6, -0x3e264bc7    # -27.213f

    const v7, 0x42ea0937

    const v8, -0x3d78b7cf

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x418f0e56    # 17.882f

    const v4, -0x3e59cccd    # -20.775f

    const v5, 0x4210b74c    # 36.179f

    const v6, -0x3ddff1aa    # -40.014f

    const v7, 0x425c1687    # 55.022f

    const v8, -0x3ddad604    # -41.291f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41da1687    # 27.261f

    const v4, -0x4013b646    # -1.846f

    const v5, 0x420dab02    # 35.417f

    const v6, 0x40e322d1    # 7.098f

    const v7, 0x4258ea7f    # 54.229f

    const v8, 0x40960c4a    # 4.689f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41171eb8    # 9.445f

    const v4, -0x3fe56042    # -2.416f

    const v5, 0x41b93333    # 23.15f

    const v6, -0x3eb8f1aa    # -12.441f

    const v7, 0x41b93333    # 23.15f

    const v8, -0x3e070831    # -31.121f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x4429db64

    const v4, 0x4479b656    # 998.849f

    const v5, 0x4426ba1d

    const v6, 0x4477174c

    const v7, 0x442411ba

    const v8, 0x4476646a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x44257a3d

    const v3, 0x4476c021

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e6b5604    # -18.583f

    const v4, -0x3ffa9fbe    # -2.084f

    const v5, -0x3e1ee354    # -28.139f

    const v6, 0x410c4189    # 8.766f

    const v7, -0x3d9fea7f    # -56.021f

    const v8, 0x40ea0c4a    # 7.314f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e561893    # -21.238f

    const v4, -0x40718937    # -1.113f

    const v5, -0x3dd95a1d

    const v6, -0x3e33c083    # -25.531f

    const v7, -0x3d88ad0e

    const v8, -0x3dba449c

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e81851f    # -15.905f

    const v4, -0x3e379168    # -25.054f

    const v5, -0x3de0a7f0

    const v6, -0x3dcdf6c9

    const v7, -0x3d77a4dd

    const v8, -0x3da50106    # -54.749f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e91f3b6    # -14.878f

    const v4, -0x3f4f020c    # -5.531f

    const v5, -0x3e0bbe77    # -30.532f

    const v6, -0x3efe45a2    # -8.108f

    const v7, -0x3dc5c5a2    # -46.557f

    const v8, -0x3efe45a2    # -8.108f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3dfd9fbe

    const/4 v4, 0x0

    const v5, -0x3d85da1d

    const v6, 0x413ddb23    # 11.866f

    const v7, -0x3d54570a    # -85.83f

    const v8, 0x41fbd2f2    # 31.478f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e12f3b6    # -29.631f

    const v4, 0x41c61cac    # 24.764f

    const v5, -0x3dbe0e56    # -48.486f

    const v6, 0x4277f9db    # 61.994f

    const v7, -0x3dbe0e56    # -48.486f

    const v8, 0x42cf428f    # 103.63f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42951e35

    const v5, 0x4271c396

    const/high16 v6, 0x43070000    # 135.0f

    const/high16 v7, 0x43070000    # 135.0f

    const/high16 v8, 0x43070000    # 135.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x4244e24e    # 49.221f

    const/4 v4, 0x0

    const v5, 0x42b891ec

    const v6, -0x3e2d3b64    # -26.346f

    const v7, 0x42e7be77

    const v8, -0x3d7c9917

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x419cb439    # 19.588f

    const v4, -0x3e454fdf    # -23.336f

    const v5, 0x421e926f

    const v6, -0x3dc77be7

    const v7, 0x4271e873

    const v8, -0x3dc36666    # -47.15f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41e0db23    # 28.107f

    const v4, -0x404f7cee    # -1.379f

    const v5, 0x42104ed9    # 36.077f

    const v6, 0x410f1eb8    # 8.945f

    const v7, 0x425e3852    # 55.555f

    const v8, 0x40e4cccd    # 7.15f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x4119a9fc    # 9.604f

    const v4, -0x4019374c    # -1.803f

    const v5, 0x41bd978d    # 23.699f

    const v6, -0x3ecaf9db    # -11.314f

    const v7, 0x41bd978d    # 23.699f

    const v8, -0x3e127efa    # -29.688f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x442b66fa

    const v4, 0x4479c5c3

    const v5, 0x44282bd7

    const v6, 0x447745a2

    const v7, 0x44257a3d

    const v8, 0x4476c021

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x4426ce66

    const v3, 0x447716a8

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e673b64    # -19.096f

    const v4, -0x404ae148    # -1.415f

    const v5, -0x3e1ae354    # -28.639f

    const v6, 0x4129e354    # 10.618f

    const v7, -0x3d9aced9    # -57.298f

    const v8, 0x411a20c5    # 9.633f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e448b44    # -23.432f

    const v4, -0x40b0624e    # -0.811f

    const v5, -0x3dc8a1cb    # -45.842f

    const v6, -0x3e111062    # -29.867f

    const v7, -0x3d7823d7    # -67.93f

    const/high16 v8, -0x3d9f0000    # -56.25f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3ea28312    # -13.843f

    const v4, -0x3e5bdf3b    # -20.516f

    const v5, -0x3dfb4ac1

    const v6, -0x3debec8b

    const v7, -0x3da06f9e

    const v8, -0x3dc25b23    # -47.411f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e70b646    # -17.911f

    const v4, -0x3ef8fdf4    # -8.438f

    const v5, -0x3deb999a    # -37.1f

    const v6, -0x3ebb3333    # -12.3f

    const v7, -0x3d9cc5a2    # -56.807f

    const v8, -0x3ebb3333    # -12.3f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3df99cac    # -33.597f

    const/4 v4, 0x0

    const v5, -0x3d7f3be7

    const v6, 0x4149d70a    # 12.615f

    const v7, -0x3d501168

    const v8, 0x420553f8    # 33.332f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e1ceb85    # -28.385f

    const v4, 0x41c5fdf4    # 24.749f

    const v5, -0x3dc6b22d    # -46.326f

    const v6, 0x4274b127    # 61.173f

    const v7, -0x3dc6b22d    # -46.326f

    const v8, 0x42cb947b    # 101.79f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42951e35

    const v5, 0x4271c396

    const/high16 v6, 0x43070000    # 135.0f

    const/high16 v7, 0x43070000    # 135.0f

    const/high16 v8, 0x43070000    # 135.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x424073b6

    const/4 v4, 0x0

    const v5, 0x42b4ae98

    const v6, -0x3e369ba6    # -25.174f

    const v7, 0x42e47f7d    # 114.249f

    const v8, -0x3d83be77    # -63.064f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41aaf3b6    # 21.369f

    const v4, -0x3e310625    # -25.872f

    const v5, 0x422cf3b6

    const v6, -0x3dad051f

    const v7, 0x428452f2

    const v8, -0x3daa0d50    # -53.487f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41e74396    # 28.908f

    const v4, -0x409020c5    # -0.937f

    const v5, 0x4212cfdf    # 36.703f

    const v6, 0x412b0625    # 10.689f

    const v7, 0x42633a5e    # 56.807f

    const v8, 0x41179168    # 9.473f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x411c1062    # 9.754f

    const v4, -0x406353f8    # -1.224f

    const v5, 0x41c1bc6a    # 24.217f

    const v6, -0x3edbf3b6    # -10.253f

    const v7, 0x41c1bc6a    # 24.217f

    const v8, -0x3e1d4fdf    # -28.336f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x442cdc39

    const v4, 0x4479d46a

    const v5, 0x442988a4

    const v6, 0x44777158

    const v7, 0x4426ce66

    const v8, 0x447716a8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x4428045a

    const v3, 0x447765b2

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e637efa    # -19.563f

    const v4, -0x40b16873    # -0.807f

    const v5, -0x3e174396    # -29.092f

    const v6, 0x4144e979    # 12.307f

    const v7, -0x3d9626e9

    const v8, 0x413bef9e    # 11.746f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e30999a    # -25.925f

    const v4, -0x41010625    # -0.498f

    const v5, -0x3db5b74c    # -50.571f

    const v6, -0x3df25f3b

    const v7, -0x3d6a599a

    const v8, -0x3d7fbc6a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3ed34fdf    # -10.793f

    const v4, -0x3e9574bc    # -14.659f

    const v5, -0x3e3c2d0e    # -24.478f

    const v6, -0x3e279168    # -27.054f

    const v7, -0x3ddf25e3

    const v8, -0x3dee999a    # -36.35f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e54b439    # -21.412f

    const v4, -0x3eaff7cf    # -13.002f

    const v5, -0x3dcc1168

    const v6, -0x3e69645a    # -18.826f

    const v7, -0x3d756a7f    # -69.292f

    const v8, -0x3e69645a    # -18.826f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3df68e56    # -34.361f

    const/4 v4, 0x0

    const v5, -0x3d7c6f1b

    const v6, 0x41534bc7    # 13.206f

    const v7, -0x3d4cdfbe

    const v8, 0x420b1fbe

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e246e98    # -27.446f

    const v4, 0x41c5b021    # 24.711f

    const v5, -0x3dcd2d0e

    const v6, 0x42720e56    # 60.514f

    const v7, -0x3dcd2d0e

    const v8, 0x42c8b53f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42951e35

    const v5, 0x4271c396

    const/high16 v6, 0x43070000    # 135.0f

    const/high16 v7, 0x43070000    # 135.0f

    const/high16 v8, 0x43070000    # 135.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41629ba6    # 14.163f

    const/4 v4, 0x0

    const v5, 0x41de8312    # 27.814f

    const v6, -0x3ff3f7cf    # -2.188f

    const v7, 0x42229062

    const v8, -0x3f38a3d7    # -6.23f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3efef9db    # 0.498f

    const v4, -0x41e24dd3    # -0.154f

    const v5, 0x3f7db22d    # 0.991f

    const v6, -0x415b22d1    # -0.322f

    const v7, 0x3fbe5604    # 1.487f

    const v8, -0x41083127    # -0.484f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3ecfdf3b    # 0.406f

    const v4, -0x41f7ced9    # -0.133f

    const v5, 0x3f50624e    # 0.814f

    const v6, -0x417ae148    # -0.26f

    const v7, 0x3f9be76d    # 1.218f

    const v8, -0x41353f7d    # -0.396f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x40815810    # 4.042f

    const v4, -0x4052b021    # -1.354f

    const v5, 0x41003958    # 8.014f

    const v6, -0x3fc56042    # -2.916f

    const v7, 0x413e9375    # 11.911f

    const v8, -0x3f6a1cac    # -4.684f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3e4bc6a8    # 0.199f

    const v4, -0x4247ae14    # -0.09f

    const v5, 0x3ecbc6a8    # 0.398f

    const v6, -0x41c7ae14    # -0.18f

    const v7, 0x3f191687    # 0.598f

    const v8, -0x4175c28f    # -0.27f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3f03d70a    # 0.515f

    const v4, -0x418e5604    # -0.236f

    const v5, 0x3f8374bc    # 1.027f

    const v6, -0x410ccccd    # -0.475f

    const v7, 0x3fc4fdf4    # 1.539f

    const v8, -0x40c7ef9e    # -0.719f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41b15e35    # 22.171f

    const v4, -0x3ed91eb8    # -10.43f

    const v5, 0x42242f1b

    const v6, -0x3e2a5810    # -26.707f

    const v7, 0x425a820c

    const v8, -0x3dc49581    # -46.854f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41b9e354    # 23.236f

    const v4, -0x3e1dbc6a    # -28.283f

    const v5, 0x423be873

    const v6, -0x3d90a5e3

    const v7, 0x42902f9e

    const v8, -0x3d8ed810

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41ed1cac    # 29.639f

    const v4, -0x40f78d50    # -0.533f

    const v5, 0x4215178d

    const v6, 0x41447efa    # 12.281f

    const v7, 0x4267c9ba

    const v8, 0x413978d5    # 11.592f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x411e4189    # 9.891f

    const v4, -0x40cd9168    # -0.697f

    const v5, 0x41c58312    # 24.689f

    const v6, -0x3eeb6873    # -9.287f

    const v7, 0x41c58312    # 24.689f

    const v8, -0x3e272b02    # -27.104f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x442e3083

    const v4, 0x4479e1aa    # 999.526f

    const v5, 0x442ac687

    const v6, 0x44779937

    const v7, 0x4428045a

    const v8, 0x447765b2

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x44290948

    const v3, 0x4477a810

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e605a1d    # -19.956f

    const v4, -0x4169fbe7    # -0.293f

    const v5, -0x3e142f1b    # -29.477f

    const v6, 0x415ba9fc    # 13.729f

    const v7, -0x3d923b64

    const v8, 0x41585e35    # 13.523f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e14f3b6    # -29.381f

    const v4, -0x41b43958    # -0.199f

    const v5, -0x3d9ba0c5

    const v6, -0x3dce6a7f    # -44.396f

    const v7, -0x3d574937

    const v8, -0x3d69f53f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3f576c8b    # -5.268f

    const v4, -0x3f3c4189    # -6.117f

    const v5, -0x3ecec49c    # -11.077f

    const v6, -0x3ec3f3b6    # -11.753f

    const v7, -0x3e753333    # -17.35f

    const v8, -0x3e794396    # -16.842f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e3351ec    # -25.585f

    const v4, -0x3e57645a    # -21.076f

    const v5, -0x3da39168

    const v6, -0x3e0ded91    # -30.259f

    const v7, -0x3d5486a8    # -85.737f

    const v8, -0x3e0ded91    # -30.259f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3df3bd71

    const/4 v4, 0x0

    const v5, -0x3d79dba6    # -67.071f

    const v6, 0x415c353f    # 13.763f

    const v7, -0x3d49f74c

    const v8, 0x42108f5c    # 36.14f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e2b4bc7    # -26.588f

    const v4, 0x41c53f7d    # 24.656f

    const v5, -0x3dd31062

    const v6, 0x426f8831    # 59.883f

    const v7, -0x3dd31062

    const v8, 0x42c6020c

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42951e35

    const v5, 0x4271c396

    const/high16 v6, 0x43070000    # 135.0f

    const/high16 v7, 0x43070000    # 135.0f

    const/high16 v8, 0x43070000    # 135.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x414e51ec    # 12.895f

    const/4 v4, 0x0

    const v5, 0x41caef9e    # 25.367f

    const v6, -0x40183127    # -1.811f

    const v7, 0x4214b646

    const v8, -0x3f59fbe7    # -5.188f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x414eac08    # 12.917f

    const v4, -0x3f9ae148    # -3.58f

    const v5, 0x41c9a3d7    # 25.205f

    const v6, -0x3eedced9    # -9.137f

    const v7, 0x4212b74c    # 36.679f

    const v8, -0x3e79978d    # -16.801f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41583958    # 13.514f

    const v4, -0x3ef26666    # -8.85f

    const v5, 0x41cabe77    # 25.343f

    const v6, -0x3e5f8f5c    # -20.055f

    const v7, 0x420b9db2    # 34.904f

    const v8, -0x3dfbda1d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41ca147b    # 25.26f

    const v4, -0x3e0c78d5    # -30.441f

    const v5, 0x424bf7cf    # 50.992f

    const v6, -0x3d78dfbe

    const v7, 0x429cf021

    const v8, -0x3d788625

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41f2020c    # 30.251f

    const v4, -0x41ba5e35    # -0.193f

    const v5, 0x42170106    # 37.751f

    const v6, 0x4159e76d    # 13.619f

    const v7, 0x426ba0c5

    const v8, 0x4155f7cf    # 13.373f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x4120147b    # 10.005f

    const v4, -0x417ef9db    # -0.252f

    const v5, 0x41c8b021    # 25.086f

    const v6, -0x3ef876c9    # -8.471f

    const v7, 0x41c8b021    # 25.086f

    const v8, -0x3e2f78d5    # -26.066f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x442f4eb8

    const v4, 0x4479ecee

    const v5, 0x442bd1ec

    const v6, 0x4477bab0

    const v7, 0x44290948

    const v8, 0x4477a810

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x44299dd3

    const v3, 0x4477cdd3

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e5e8f5c    # -20.18f

    const/4 v4, 0x0

    const v5, -0x3e1272b0    # -29.694f

    const v6, 0x41689fbe    # 14.539f

    const v7, -0x3d900106    # -59.999f

    const v8, 0x41689fbe    # 14.539f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e0d8d50    # -30.306f

    const/4 v4, 0x0

    const v5, -0x3d94b646

    const v6, -0x3dc548b4    # -46.679f

    const v7, -0x3d524d50    # -86.849f

    const v8, -0x3d646a7f    # -77.792f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e175810    # -29.082f

    const v4, -0x3dfedb23    # -32.286f

    const v5, -0x3d7e23d7    # -64.93f

    const v6, -0x3dc84189    # -45.936f

    const v7, -0x3d33420c

    const v8, -0x3dc84189    # -45.936f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3df24189    # -35.436f

    const/4 v4, 0x0

    const v5, -0x3d788000    # -67.75f

    const v6, 0x4160ed91    # 14.058f

    const v7, -0x3d487333

    const v8, 0x421372b0    # 36.862f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e2ee148    # -26.14f

    const v4, 0x41c4f3b6    # 24.619f

    const v5, -0x3dd623d7    # -42.465f

    const v6, 0x426e2e14

    const v7, -0x3dd623d7    # -42.465f

    const v8, 0x42c49375

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42951e35

    const v5, 0x4271c396

    const/high16 v6, 0x43070000    # 135.0f

    const/high16 v7, 0x43070000    # 135.0f

    const/high16 v8, 0x43070000    # 135.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x413f3f7d    # 11.953f

    const/4 v4, 0x0

    const v5, 0x41bc53f8    # 23.541f

    const v6, -0x4037ef9e    # -1.563f

    const v7, 0x420a4fdf    # 34.578f

    const v8, -0x3f70ac08    # -4.479f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41938106    # 18.438f

    const v4, -0x3f6a4dd3    # -4.678f

    const v5, 0x420ea9fc    # 35.666f

    const v6, -0x3eab6042    # -13.289f

    const v7, 0x424c999a    # 51.15f

    const v8, -0x3e2e24dd    # -26.232f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x40e2353f    # 7.069f

    const v4, -0x3f45d2f2    # -5.818f

    const v5, 0x41587efa    # 13.531f

    const v6, -0x3eba76c9    # -12.346f

    const v7, 0x419a51ec    # 19.29f

    const v8, -0x3e644396    # -19.467f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41d83b64    # 27.029f

    const v4, -0x3e01ef9e    # -31.758f

    const v5, 0x4259e45a    # 54.473f

    const v6, -0x3d6b9917

    const v7, 0x42a7f8d5    # 83.986f

    const v8, -0x3d6b9917

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41f4ced9    # 30.601f

    const/4 v4, 0x0

    const v5, 0x42181893

    const v6, 0x41661062    # 14.379f

    const v7, 0x426dd0e5

    const v8, 0x41663127    # 14.387f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41211eb8    # 10.07f

    const/4 v4, 0x0

    const v5, 0x41ca8106    # 25.313f

    const v6, -0x3effdf3b    # -8.008f

    const v7, 0x41ca8106    # 25.313f

    const v8, -0x3e342f1b    # -25.477f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x442ff1cb

    const v4, 0x4479f354

    const v5, 0x442c6a4e

    const v6, 0x4477cdd3

    const v7, 0x44299dd3

    const v8, 0x4477cdd3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x4429d906

    const v3, 0x4477cdd3

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e5e8f5c    # -20.18f

    const/4 v4, 0x0

    const v5, -0x3e0fdb23    # -30.018f

    const v6, 0x41758106    # 15.344f

    const v7, -0x3d8eb646

    const v8, 0x41758106    # 15.344f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e0d8b44    # -30.307f

    const/4 v4, 0x0

    const v5, -0x3d924dd3    # -59.424f

    const v6, -0x3dc21062

    const v7, -0x3d511917

    const v8, -0x3d62ce56    # -78.597f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e175810    # -29.082f

    const v4, -0x3dfedb23    # -32.286f

    const v5, -0x3d7e23d7    # -64.93f

    const v6, -0x3dc84189    # -45.936f

    const v7, -0x3d33420c

    const v8, -0x3dc84189    # -45.936f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3df24189    # -35.436f

    const/4 v4, 0x0

    const v5, -0x3d788000    # -67.75f

    const v6, 0x4160ed91    # 14.058f

    const v7, -0x3d487333

    const v8, 0x421372b0    # 36.862f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e2ee148    # -26.14f

    const v4, 0x41c4f3b6    # 24.619f

    const v5, -0x3dd623d7    # -42.465f

    const v6, 0x426e2e14

    const v7, -0x3dd623d7    # -42.465f

    const v8, 0x42c49375

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42951e35

    const v5, 0x4271c396

    const/high16 v6, 0x43070000    # 135.0f

    const/high16 v7, 0x43070000    # 135.0f

    const/high16 v8, 0x43070000    # 135.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x413f3b64    # 11.952f

    const/4 v4, 0x0

    const v5, 0x41bc4dd3    # 23.538f

    const v6, -0x40383127    # -1.561f

    const v7, 0x420a4ac1

    const v8, -0x3f70bc6a    # -4.477f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x4193872b    # 18.441f

    const v4, -0x3f6a3d71    # -4.68f

    const v5, 0x420eae14    # 35.67f

    const v6, -0x3eab5810    # -13.291f

    const v7, 0x424c9fbe

    const v8, -0x3e2e1cac    # -26.236f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x40e24dd3    # 7.072f

    const v4, -0x3f45b22d    # -5.822f

    const v5, 0x41589fbe    # 13.539f

    const v6, -0x3eba5604    # -12.354f

    const v7, 0x419a645a    # 19.299f

    const v8, -0x3e642b02    # -19.479f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41d88312    # 27.064f

    const v4, -0x3e018312    # -31.811f

    const v5, 0x425c1581    # 55.021f

    const v6, -0x3d69f9db

    const v7, 0x42a90fdf

    const v8, -0x3d69f9db

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41f4d0e5    # 30.602f

    const/4 v4, 0x0

    const v5, 0x4219947b    # 38.395f

    const v6, 0x41733f7d    # 15.203f

    const v7, 0x426f4bc7

    const v8, 0x41736042    # 15.211f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41211eb8    # 10.07f

    const/4 v4, 0x0

    const v5, 0x41ca8106    # 25.313f

    const v6, -0x3effdf3b    # -8.008f

    const v7, 0x41ca8106    # 25.313f

    const v8, -0x3e342f1b    # -25.477f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x44302cfe

    const v4, 0x4479f354

    const v5, 0x442ca581

    const v6, 0x4477cdd3

    const v7, 0x4429d906

    const v8, 0x4477cdd3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x442a0e04

    const v3, 0x4477cdd3

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e5e8f5c    # -20.18f

    const/4 v4, 0x0

    const v5, -0x3e0d8937    # -30.308f

    const v6, 0x41808106    # 16.063f

    const v7, -0x3d8d8c4a

    const v8, 0x41808106    # 16.063f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->s:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3d9027f0

    const v4, -0x3dbf3021    # -48.203f

    const v5, -0x3d5006a8    # -87.987f

    const v6, -0x3d615eb8

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e175810    # -29.082f

    const v4, -0x3dfedb23    # -32.286f

    const v5, -0x3d7e23d7    # -64.93f

    const v6, -0x3dc84189    # -45.936f

    const v7, -0x3d33420c

    const v8, -0x3dc84189    # -45.936f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3df24189    # -35.436f

    const/4 v4, 0x0

    const v5, -0x3d788000    # -67.75f

    const v6, 0x4160ed91    # 14.058f

    const v7, -0x3d487333

    const v8, 0x421372b0    # 36.862f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e2ee148    # -26.14f

    const v4, 0x41c4f3b6    # 24.619f

    const v5, -0x3dd623d7    # -42.465f

    const v6, 0x426e2e14

    const v7, -0x3dd623d7    # -42.465f

    const v8, 0x42c49375

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42951e35

    const v5, 0x4271c396

    const/high16 v6, 0x43070000    # 135.0f

    const/high16 v7, 0x43070000    # 135.0f

    const/high16 v8, 0x43070000    # 135.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x413f3b64    # 11.952f

    const/4 v4, 0x0

    const v5, 0x41bc4fdf    # 23.539f

    const v6, -0x40383127    # -1.561f

    const v7, 0x420a4bc7

    const v8, -0x3f70bc6a    # -4.477f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x4193851f    # 18.44f

    const v4, -0x3f6a3d71    # -4.68f

    const v5, 0x420eae14    # 35.67f

    const v6, -0x3eab5810    # -13.291f

    const v7, 0x424c9eb8

    const v8, -0x3e2e1cac    # -26.236f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x40e276c9    # 7.077f

    const v4, -0x3f45a1cb    # -5.824f

    const v5, 0x4158bc6a    # 13.546f

    const v6, -0x3eba4189    # -12.359f

    const v7, 0x419a78d5    # 19.309f

    const v8, -0x3e64147b    # -19.49f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41d8c28f    # 27.095f

    const v4, -0x3e0120c5    # -31.859f

    const v5, 0x425e0b44

    const v6, -0x3d68872b    # -75.736f

    const v7, 0x42aa09ba

    const v8, -0x3d68872b    # -75.736f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41f4ced9    # 30.601f

    const/4 v4, 0x0

    const v5, 0x421ae76d

    const v6, 0x417f0625    # 15.939f

    const v7, 0x42709eb8

    const v8, 0x417f26e9    # 15.947f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41211eb8    # 10.07f

    const/4 v4, 0x0

    const v5, 0x41ca7efa    # 25.312f

    const v6, -0x3effdf3b    # -8.008f

    const v7, 0x41ca7efa    # 25.312f

    const v8, -0x3e342f1b    # -25.477f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x443061ec

    const v4, 0x4479f354

    const v5, 0x442cda7f

    const v6, 0x4477cdd3

    const v7, 0x442a0e04

    const v8, 0x4477cdd3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x442a42d1

    const v3, 0x4477cde3

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e5e8f5c    # -20.18f

    const/4 v4, 0x0

    const v5, -0x3e0b3958    # -30.597f

    const v6, 0x41863f7d    # 16.781f

    const v7, -0x3d8c645a    # -60.902f

    const v8, 0x41863f7d    # 16.781f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e0d8f5c    # -30.305f

    const/4 v4, 0x0

    const v5, -0x3d8e0312

    const v6, -0x3dbc4fdf    # -48.922f

    const v7, -0x3d4ef439

    const v8, -0x3d5fee14

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e175810    # -29.082f

    const v4, -0x3dfedb23    # -32.286f

    const v5, -0x3d7e23d7    # -64.93f

    const v6, -0x3dc84189    # -45.936f

    const v7, -0x3d33420c

    const v8, -0x3dc84189    # -45.936f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3df24189    # -35.436f

    const/4 v4, 0x0

    const v5, -0x3d788000    # -67.75f

    const v6, 0x4160ed91    # 14.058f

    const v7, -0x3d487333

    const v8, 0x421372b0    # 36.862f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e2ee148    # -26.14f

    const v4, 0x41c4f3b6    # 24.619f

    const v5, -0x3dd623d7    # -42.465f

    const v6, 0x426e2d0e

    const v7, -0x3dd623d7    # -42.465f

    const v8, 0x42c49375

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42951e35

    const v5, 0x4271c396

    const/high16 v6, 0x43070000    # 135.0f

    const/high16 v7, 0x43070000    # 135.0f

    const/high16 v8, 0x43070000    # 135.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x413f3b64    # 11.952f

    const/4 v4, 0x0

    const v5, 0x41bc4fdf    # 23.539f

    const v6, -0x40383127    # -1.561f

    const v7, 0x420a4bc7

    const v8, -0x3f70bc6a    # -4.477f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x4193851f    # 18.44f

    const v4, -0x3f6a3d71    # -4.68f

    const v5, 0x420eae14    # 35.67f

    const v6, -0x3eab5810    # -13.291f

    const v7, 0x424c9eb8

    const v8, -0x3e2e1cac    # -26.236f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x40e2978d    # 7.081f

    const v4, -0x3f458106    # -5.828f

    const v5, 0x4158d4fe    # 13.552f

    const v6, -0x3eba20c5    # -12.367f

    const v7, 0x419a8937    # 19.317f

    const/high16 v8, -0x3e640000    # -19.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41d9020c    # 27.126f

    const v4, -0x3e00bc6a    # -31.908f

    const/high16 v5, 0x42600000    # 56.0f

    const v6, -0x3d6713f8

    const v7, 0x42ab028f

    const v8, -0x3d6713f8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41f4ced9    # 30.601f

    const/4 v4, 0x0

    const v5, 0x421c3958    # 39.056f

    const v6, 0x4185645a    # 16.674f

    const v7, 0x4271f0a4    # 60.485f

    const v8, 0x418574bc    # 16.682f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41211aa0    # 10.069f

    const/4 v4, 0x0

    const v5, 0x41ca7efa    # 25.312f

    const v6, -0x3effdf3b    # -8.008f

    const v7, 0x41ca7efa    # 25.312f

    const v8, -0x3e342f1b    # -25.477f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x443096b8

    const v4, 0x4479f364

    const v5, 0x442d0f3b

    const v6, 0x4477cde3

    const v7, 0x442a42d1

    const v8, 0x4477cde3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x442a776d

    const v3, 0x4477cde3

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e5e8f5c    # -20.18f

    const/4 v4, 0x0

    const v5, -0x3e08eb85    # -30.885f

    const v6, 0x418bf5c3    # 17.495f

    const v7, -0x3d8b3e77    # -61.189f

    const v8, 0x418bf5c3    # 17.495f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e0d8d50    # -30.306f

    const/4 v4, 0x0

    const v5, -0x3d8bdf3b

    const v6, -0x3db974bc

    const v7, -0x3d4de1cb

    const v8, -0x3d5e8083    # -80.749f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e175810    # -29.082f

    const v4, -0x3dfedb23    # -32.286f

    const v5, -0x3d7e23d7    # -64.93f

    const v6, -0x3dc84189    # -45.936f

    const v7, -0x3d33420c

    const v8, -0x3dc84189    # -45.936f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3df24189    # -35.436f

    const/4 v4, 0x0

    const v5, -0x3d788000    # -67.75f

    const v6, 0x4160ed91    # 14.058f

    const v7, -0x3d487333

    const v8, 0x421372b0    # 36.862f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e2ee148    # -26.14f

    const v4, 0x41c4f3b6    # 24.619f

    const v5, -0x3dd623d7    # -42.465f

    const v6, 0x426e2d0e

    const v7, -0x3dd623d7    # -42.465f

    const v8, 0x42c49375

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42951e35

    const v5, 0x4271c396

    const/high16 v6, 0x43070000    # 135.0f

    const/high16 v7, 0x43070000    # 135.0f

    const/high16 v8, 0x43070000    # 135.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x413f3b64    # 11.952f

    const/4 v4, 0x0

    const v5, 0x41bc4fdf    # 23.539f

    const v6, -0x40383127    # -1.561f

    const v7, 0x420a4bc7

    const v8, -0x3f70bc6a    # -4.477f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x4193851f    # 18.44f

    const v4, -0x3f6a3d71    # -4.68f

    const v5, 0x420eae14    # 35.67f

    const v6, -0x3eab5810    # -13.291f

    const v7, 0x424c9eb8

    const v8, -0x3e2e1cac    # -26.236f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x40e2b852    # 7.085f

    const v4, -0x3f4570a4    # -5.83f

    const v5, 0x4158f5c3    # 13.56f

    const/high16 v6, -0x3eba0000    # -12.375f

    const v7, 0x419a9fbe    # 19.328f

    const v8, -0x3e63e354    # -19.514f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41d93d71    # 27.155f

    const v4, -0x3e005c29    # -31.955f

    const v5, 0x4261f0a4    # 56.485f

    const v6, -0x3d65a3d7    # -77.18f

    const v7, 0x42abf958    # 85.987f

    const v8, -0x3d65a3d7    # -77.18f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41f4d0e5    # 30.602f

    const/4 v4, 0x0

    const v5, 0x421d8a3d

    const v6, 0x418b3f7d    # 17.406f

    const v7, 0x42734189    # 60.814f

    const v8, 0x418b4fdf    # 17.414f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41211eb8    # 10.07f

    const/4 v4, 0x0

    const v5, 0x41ca8106    # 25.313f

    const v6, -0x3effdf3b    # -8.008f

    const v7, 0x41ca8106    # 25.313f

    const v8, -0x3e342f1b    # -25.477f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x4430cb75

    const v4, 0x4479f364

    const v5, 0x442d43f8

    const v6, 0x4477cde3

    const v7, 0x442a776d

    const v8, 0x4477cde3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x442aac08

    const v3, 0x4477cde3

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e5e8b44    # -20.182f

    const/4 v4, 0x0

    const v5, -0x3e069fbe    # -31.172f

    const v6, 0x4191ac08    # 18.209f

    const v7, -0x3d8a1687    # -61.478f

    const v8, 0x4191ac08    # 18.209f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->s:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3d89bd71

    const v4, -0x3db6999a    # -50.35f

    const v5, -0x3d4cd0e5

    const v6, -0x3d5d12f2

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e175810    # -29.082f

    const v4, -0x3dfedb23    # -32.286f

    const v5, -0x3d7e23d7    # -64.93f

    const v6, -0x3dc84189    # -45.936f

    const v7, -0x3d33420c

    const v8, -0x3dc84189    # -45.936f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3df24189    # -35.436f

    const/4 v4, 0x0

    const v5, -0x3d788000    # -67.75f

    const v6, 0x4160ed91    # 14.058f

    const v7, -0x3d487333

    const v8, 0x421372b0    # 36.862f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e2ee148    # -26.14f

    const v4, 0x41c4f3b6    # 24.619f

    const v5, -0x3dd623d7    # -42.465f

    const v6, 0x426e2d0e

    const v7, -0x3dd623d7    # -42.465f

    const v8, 0x42c492f2

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42951e35

    const v5, 0x4271c396

    const/high16 v6, 0x43070000    # 135.0f

    const/high16 v7, 0x43070000    # 135.0f

    const/high16 v8, 0x43070000    # 135.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x413f3b64    # 11.952f

    const/4 v4, 0x0

    const v5, 0x41bc4fdf    # 23.539f

    const v6, -0x40383127    # -1.561f

    const v7, 0x420a4bc7

    const v8, -0x3f70cccd    # -4.475f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x4193851f    # 18.44f

    const v4, -0x3f6a3d71    # -4.68f

    const v5, 0x420eae14    # 35.67f

    const v6, -0x3eab4fdf    # -13.293f

    const v7, 0x424c9eb8

    const v8, -0x3e2e1cac    # -26.236f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x40e2d917    # 7.089f

    const v4, -0x3f454fdf    # -5.834f

    const v5, 0x41590e56    # 13.566f

    const v6, -0x3eb9df3b    # -12.383f

    const v7, 0x419ab22d    # 19.337f

    const v8, -0x3e63cccd    # -19.525f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41d97efa    # 27.187f

    const v4, -0x3dfffbe7

    const v5, 0x4263e24e    # 56.971f

    const v6, -0x3d643439

    const v7, 0x42acf127    # 86.471f

    const v8, -0x3d643439

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41f4ced9    # 30.601f

    const/4 v4, 0x0

    const v5, 0x421ed917

    const v6, 0x41911893    # 18.137f

    const v7, 0x42749375

    const v8, 0x419128f6    # 18.145f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41211687    # 10.068f

    const/4 v4, 0x0

    const v5, 0x41ca7cee    # 25.311f

    const v6, -0x3effdf3b    # -8.008f

    const v7, 0x41ca7cee    # 25.311f

    const v8, -0x3e342f1b    # -25.477f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x4430ffdf

    const v4, 0x4479f364

    const v5, 0x442d7862

    const v6, 0x4477cde3

    const v7, 0x442aac08

    const v8, 0x4477cde3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x442ae031

    const v3, 0x4477cde3

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e5e8d50    # -20.181f

    const/4 v4, 0x0

    const v5, -0x3e045810    # -31.457f

    const v6, 0x41975c29    # 18.92f

    const v7, -0x3d88f2b0    # -61.763f

    const v8, 0x41975c29    # 18.92f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->s:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3d879db2    # -62.096f

    const v4, -0x3db3c189    # -51.061f

    const v5, -0x3d4bc189

    const v6, -0x3d5ba6e9

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e175810    # -29.082f

    const v4, -0x3dfedb23    # -32.286f

    const v5, -0x3d7e23d7    # -64.93f

    const v6, -0x3dc84189    # -45.936f

    const v7, -0x3d33420c

    const v8, -0x3dc84189    # -45.936f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3df24189    # -35.436f

    const/4 v4, 0x0

    const v5, -0x3d788000    # -67.75f

    const v6, 0x4160ed91    # 14.058f

    const v7, -0x3d487333

    const v8, 0x421372b0    # 36.862f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e2ee148    # -26.14f

    const v4, 0x41c4f3b6    # 24.619f

    const v5, -0x3dd623d7    # -42.465f

    const v6, 0x426e2d0e

    const v7, -0x3dd623d7    # -42.465f

    const v8, 0x42c493f8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42951e35

    const v5, 0x4271c396

    const/high16 v6, 0x43070000    # 135.0f

    const/high16 v7, 0x43070000    # 135.0f

    const/high16 v8, 0x43070000    # 135.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x413f3b64    # 11.952f

    const/4 v4, 0x0

    const v5, 0x41bc4fdf    # 23.539f

    const v6, -0x40383127    # -1.561f

    const v7, 0x420a4bc7

    const v8, -0x3f70bc6a    # -4.477f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x4193851f    # 18.44f

    const v4, -0x3f6a3d71    # -4.68f

    const v5, 0x420eae14    # 35.67f

    const v6, -0x3eab5810    # -13.291f

    const v7, 0x424c9eb8

    const v8, -0x3e2e1cac    # -26.236f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x40e2f9db    # 7.093f

    const v4, -0x3f452f1b    # -5.838f

    const v5, 0x41592f1b    # 13.574f

    const v6, -0x3eb9c6a8    # -12.389f

    const v7, 0x419ac6a8    # 19.347f

    const v8, -0x3e63b439    # -19.537f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41d9bc6a    # 27.217f

    const v4, -0x3dffcbc7

    const v5, 0x4265cfdf    # 57.453f

    const v6, -0x3d62c72b    # -78.611f

    const v7, 0x42ade6e9

    const v8, -0x3d62c72b    # -78.611f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41f4ced9    # 30.601f

    const/4 v4, 0x0

    const v5, 0x422026e9

    const v6, 0x4196e354    # 18.861f

    const v7, 0x4275e042

    const v8, 0x4196f3b6    # 18.869f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41211aa0    # 10.069f

    const/4 v4, 0x0

    const v5, 0x41ca7efa    # 25.312f

    const v6, -0x3effdf3b    # -8.008f

    const v7, 0x41ca7efa    # 25.312f

    const v8, -0x3e342f1b    # -25.477f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x44313419

    const v4, 0x4479f364

    const v5, 0x442dac9c

    const v6, 0x4477cde3

    const v7, 0x442ae031

    const v8, 0x4477cde3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x442b1429

    const v3, 0x4477cde3

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e5e8d50    # -20.181f

    const/4 v4, 0x0

    const v5, -0x3e021062    # -31.742f

    const v6, 0x419d0419    # 19.627f

    const v7, -0x3d87cfdf    # -62.047f

    const v8, 0x419d0419    # 19.627f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e0d8d50    # -30.306f

    const/4 v4, 0x0

    const v5, -0x3d858106    # -62.624f

    const v6, -0x3db0ed91

    const v7, -0x3d4ab333    # -90.65f

    const v8, -0x3d5a3cee

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e175810    # -29.082f

    const v4, -0x3dfedb23    # -32.286f

    const v5, -0x3d7e23d7    # -64.93f

    const v6, -0x3dc84189    # -45.936f

    const v7, -0x3d33420c

    const v8, -0x3dc84189    # -45.936f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3df24189    # -35.436f

    const/4 v4, 0x0

    const v5, -0x3d788000    # -67.75f

    const v6, 0x4160ed91    # 14.058f

    const v7, -0x3d487333

    const v8, 0x421372b0    # 36.862f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e2ee148    # -26.14f

    const v4, 0x41c4f3b6    # 24.619f

    const v5, -0x3dd623d7    # -42.465f

    const v6, 0x426e2d0e

    const v7, -0x3dd623d7    # -42.465f

    const v8, 0x42c492f2

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42951e35

    const v5, 0x4271c396

    const/high16 v6, 0x43070000    # 135.0f

    const/high16 v7, 0x43070000    # 135.0f

    const/high16 v8, 0x43070000    # 135.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x413f3b64    # 11.952f

    const/4 v4, 0x0

    const v5, 0x41bc4fdf    # 23.539f

    const v6, -0x40383127    # -1.561f

    const v7, 0x420a4bc7

    const v8, -0x3f70cccd    # -4.475f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x4193851f    # 18.44f

    const v4, -0x3f6a3d71    # -4.68f

    const v5, 0x420eae14    # 35.67f

    const v6, -0x3eab4fdf    # -13.293f

    const v7, 0x424c9eb8

    const v8, -0x3e2e1cac    # -26.236f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x40e31aa0    # 7.097f

    const v4, -0x3f450e56    # -5.842f

    const v5, 0x41594bc7    # 13.581f

    const v6, -0x3eb9a9fc    # -12.396f

    const v7, 0x419ad70a    # 19.355f

    const v8, -0x3e639ba6    # -19.549f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41d9fdf4    # 27.249f

    const v4, -0x3dff978d

    const v5, 0x4267be77    # 57.936f

    const v6, -0x3d615a1d

    const v7, 0x42aedc29    # 87.43f

    const v8, -0x3d615a1d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41f4ced9    # 30.601f

    const/4 v4, 0x0

    const v5, 0x422173b6

    const v6, 0x419cb021    # 19.586f

    const v7, 0x42772d0e

    const v8, 0x419cc083    # 19.594f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41211aa0    # 10.069f

    const/4 v4, 0x0

    const v5, 0x41ca7efa    # 25.312f

    const v6, -0x3effdf3b    # -8.008f

    const v7, 0x41ca7efa    # 25.312f

    const v8, -0x3e342f1b    # -25.477f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x44316821

    const v4, 0x4479f364

    const v5, 0x442de0a4    # 695.51f

    const v6, 0x4477cde3

    const v7, 0x442b1429

    const v8, 0x4477cde3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x442b47df

    const v3, 0x4477cde3

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e5e8d50    # -20.181f

    const/4 v4, 0x0

    const v5, -0x3dffe76d

    const v6, 0x41a29fbe    # 20.328f

    const v7, -0x3d86ae14    # -62.33f

    const v8, 0x41a29fbe    # 20.328f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e0d8f5c    # -30.305f

    const/4 v4, 0x0

    const v5, -0x3d836873

    const v6, -0x3dae1fbe

    const v7, -0x3d49a666

    const v8, -0x3d58d604    # -83.582f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e175810    # -29.082f

    const v4, -0x3dfedb23    # -32.286f

    const v5, -0x3d7e23d7    # -64.93f

    const v6, -0x3dc84189    # -45.936f

    const v7, -0x3d33420c

    const v8, -0x3dc84189    # -45.936f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3df24189    # -35.436f

    const/4 v4, 0x0

    const v5, -0x3d788000    # -67.75f

    const v6, 0x4160ed91    # 14.058f

    const v7, -0x3d487333

    const v8, 0x421372b0    # 36.862f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e2ee148    # -26.14f

    const v4, 0x41c4f3b6    # 24.619f

    const v5, -0x3dd623d7    # -42.465f

    const v6, 0x426e2d0e

    const v7, -0x3dd623d7    # -42.465f

    const v8, 0x42c492f2

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42951e35

    const v5, 0x4271c396

    const/high16 v6, 0x43070000    # 135.0f

    const/high16 v7, 0x43070000    # 135.0f

    const/high16 v8, 0x43070000    # 135.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x413f3b64    # 11.952f

    const/4 v4, 0x0

    const v5, 0x41bc4fdf    # 23.539f

    const v6, -0x40383127    # -1.561f

    const v7, 0x420a4bc7

    const v8, -0x3f70cccd    # -4.475f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x4193851f    # 18.44f

    const v4, -0x3f6a3d71    # -4.68f

    const v5, 0x420eae14    # 35.67f

    const v6, -0x3eab4fdf    # -13.293f

    const v7, 0x424c9eb8

    const v8, -0x3e2e1cac    # -26.236f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x40e33b64    # 7.101f

    const v4, -0x3f44fdf4    # -5.844f

    const v5, 0x41596873    # 13.588f

    const v6, -0x3eb98937    # -12.404f

    const v7, 0x419aeb85    # 19.365f

    const v8, -0x3e638312    # -19.561f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41da3b64    # 27.279f

    const v4, -0x3dff6873

    const v5, 0x4269a6e9

    const v6, -0x3d5ff021

    const v7, 0x42afced9    # 87.904f

    const v8, -0x3d5ff021

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41f4ced9    # 30.601f

    const/4 v4, 0x0

    const v5, 0x4222bf7d    # 40.687f

    const v6, 0x41a270a4    # 20.305f

    const v7, 0x427877cf    # 62.117f

    const v8, 0x41a28106    # 20.313f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41211aa0    # 10.069f

    const/4 v4, 0x0

    const v5, 0x41ca7efa    # 25.312f

    const v6, -0x3effdf3b    # -8.008f

    const v7, 0x41ca7efa    # 25.312f

    const v8, -0x3e342f1b    # -25.477f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x44319bd7

    const v4, 0x4479f364

    const v5, 0x442e144a

    const v6, 0x4477cde3

    const v7, 0x442b47df

    const v8, 0x4477cde3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x442b7b33

    const v3, 0x4477cde3

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e5e8f5c    # -20.18f

    const/4 v4, 0x0

    const v5, -0x3dfec7ae    # -32.305f

    const v6, 0x41a8374c    # 21.027f

    const v7, -0x3d858f5c    # -62.61f

    const v8, 0x41a8374c    # 21.027f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->s:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3d8151ec    # -63.67f

    const v4, -0x3dab53f8    # -53.168f

    const v5, -0x3d489ba6    # -91.696f

    const v6, -0x3d577021

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e175810    # -29.082f

    const v4, -0x3dfedb23    # -32.286f

    const v5, -0x3d7e245a    # -64.929f

    const v6, -0x3dc84189    # -45.936f

    const v7, -0x3d33420c

    const v8, -0x3dc84189    # -45.936f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3df24189    # -35.436f

    const/4 v4, 0x0

    const v5, -0x3d788000    # -67.75f

    const v6, 0x4160ed91    # 14.058f

    const v7, -0x3d487333

    const v8, 0x421372b0    # 36.862f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e2ee148    # -26.14f

    const v4, 0x41c4f3b6    # 24.619f

    const v5, -0x3dd623d7    # -42.465f

    const v6, 0x426e2d0e

    const v7, -0x3dd623d7    # -42.465f

    const v8, 0x42c492f2

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42951e35

    const v5, 0x4271c396

    const/high16 v6, 0x43070000    # 135.0f

    const/high16 v7, 0x43070000    # 135.0f

    const/high16 v8, 0x43070000    # 135.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x413f3b64    # 11.952f

    const/4 v4, 0x0

    const v5, 0x41bc4dd3    # 23.538f

    const v6, -0x40383127    # -1.561f

    const v7, 0x420a4bc7

    const v8, -0x3f70cccd    # -4.475f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x4193851f    # 18.44f

    const v4, -0x3f6a3d71    # -4.68f

    const v5, 0x420eae14    # 35.67f

    const v6, -0x3eab4fdf    # -13.293f

    const v7, 0x424c9eb8

    const v8, -0x3e2e1cac    # -26.236f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x40e353f8    # 7.104f

    const v4, -0x3f44dd2f    # -5.848f

    const v5, 0x41598937    # 13.596f

    const v6, -0x3eb96873    # -12.412f

    const/high16 v7, 0x419b0000    # 19.375f

    const v8, -0x3e636c8b    # -19.572f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41da7cee    # 27.311f

    const v4, -0x3dff3646

    const v5, 0x426b8c4a

    const v6, -0x3d5e8937

    const v7, 0x42b0c083    # 88.376f

    const v8, -0x3d5e8937

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41f4ced9    # 30.601f

    const/4 v4, 0x0

    const v5, 0x4224072b    # 41.007f

    const v6, 0x41a824dd    # 21.018f

    const v7, 0x4279c083    # 62.438f

    const v8, 0x41a83333    # 21.025f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41211eb8    # 10.07f

    const/4 v4, 0x0

    const v5, 0x41ca7efa    # 25.312f

    const v6, -0x3effdf3b    # -8.008f

    const v7, 0x41ca7efa    # 25.312f

    const v8, -0x3e342f1b    # -25.477f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x4431cf1b

    const v4, 0x4479f364

    const v5, 0x442e47ae    # 697.12f

    const v6, 0x4477cde3

    const v7, 0x442b7b33

    const v8, 0x4477cde3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x442bae04

    const v3, 0x4477cde3

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e5e8f5c    # -20.18f

    const/4 v4, 0x0

    const v5, -0x3dfdab02    # -32.583f

    const v6, 0x41adbe77    # 21.718f

    const v7, -0x3d8472b0    # -62.888f

    const v8, 0x41adbe77    # 21.718f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e0d8d50    # -30.306f

    const/4 v4, 0x0

    const v5, -0x3d7fa042

    const v6, -0x3da89062

    const v7, -0x3d4792f2

    const v8, -0x3d560e56    # -84.972f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e175810    # -29.082f

    const v4, -0x3dfedb23    # -32.286f

    const v5, -0x3d7e245a    # -64.929f

    const v6, -0x3dc84189    # -45.936f

    const v7, -0x3d33420c

    const v8, -0x3dc84189    # -45.936f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3df24189    # -35.436f

    const/4 v4, 0x0

    const v5, -0x3d788000    # -67.75f

    const v6, 0x4160ed91    # 14.058f

    const v7, -0x3d487333

    const v8, 0x421372b0    # 36.862f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e2ee148    # -26.14f

    const v4, 0x41c4f3b6    # 24.619f

    const v5, -0x3dd623d7    # -42.465f

    const v6, 0x426e2d0e

    const v7, -0x3dd623d7    # -42.465f

    const v8, 0x42c492f2

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42951e35

    const v5, 0x4271c396

    const/high16 v6, 0x43070000    # 135.0f

    const/high16 v7, 0x43070000    # 135.0f

    const/high16 v8, 0x43070000    # 135.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x413f3b64    # 11.952f

    const/4 v4, 0x0

    const v5, 0x41bc4dd3    # 23.538f

    const v6, -0x40383127    # -1.561f

    const v7, 0x420a4bc7

    const v8, -0x3f70cccd    # -4.475f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x4193851f    # 18.44f

    const v4, -0x3f6a3d71    # -4.68f

    const v5, 0x420eae14    # 35.67f

    const v6, -0x3eab4fdf    # -13.293f

    const v7, 0x424c9eb8

    const v8, -0x3e2e1cac    # -26.236f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x40e374bc    # 7.108f

    const v4, -0x3f44bc6a    # -5.852f

    const v5, 0x4159a5e3    # 13.603f

    const v6, -0x3eb94fdf    # -12.418f

    const v7, 0x419b147b    # 19.385f

    const v8, -0x3e634fdf    # -19.586f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41dab852    # 27.34f

    const v4, -0x3dff0625    # -32.244f

    const v5, 0x426d6b85    # 59.355f

    const v6, -0x3d5d25e3

    const v7, 0x42b1af9e

    const v8, -0x3d5d25e3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41f4ced9    # 30.601f

    const/4 v4, 0x0

    const v5, 0x42254ccd    # 41.325f

    const v6, 0x41adcccd    # 21.725f

    const v7, 0x427b051f

    const v8, 0x41addb23    # 21.732f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41211eb8    # 10.07f

    const/4 v4, 0x0

    const v5, 0x41ca8106    # 25.313f

    const v6, -0x3effdf3b    # -8.008f

    const v7, 0x41ca8106    # 25.313f

    const v8, -0x3e342f1b    # -25.477f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x443201fc

    const v4, 0x4479f364

    const v5, 0x442e7a7f

    const v6, 0x4477cde3

    const v7, 0x442bae04

    const v8, 0x4477cde3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x442be042

    const v3, 0x4477cde3

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e5e8f5c    # -20.18f

    const/4 v4, 0x0

    const v5, -0x3dfc926f

    const v6, 0x41b33333    # 22.4f

    const v7, -0x3d835810

    const v8, 0x41b33333    # 22.4f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e0d8f5c    # -30.305f

    const/4 v4, 0x0

    const v5, -0x3d7e9c29    # -64.695f

    const v6, -0x3da5d4fe    # -54.542f

    const v7, -0x3d468ed9    # -92.721f

    const v8, -0x3d54b0a4

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e175604    # -29.083f

    const v4, -0x3dfedc29    # -32.285f

    const v5, -0x3d7e23d7    # -64.93f

    const v6, -0x3dc84189    # -45.936f

    const v7, -0x3d334189

    const v8, -0x3dc84189    # -45.936f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3df24189    # -35.436f

    const/4 v4, 0x0

    const v5, -0x3d788000    # -67.75f

    const v6, 0x4160f1aa    # 14.059f

    const v7, -0x3d487333

    const v8, 0x421372b0    # 36.862f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e2ee148    # -26.14f

    const v4, 0x41c4f3b6    # 24.619f

    const v5, -0x3dd623d7    # -42.465f

    const v6, 0x426e2d0e

    const v7, -0x3dd623d7    # -42.465f

    const v8, 0x42c493f8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42951e35

    const v5, 0x4271c396

    const v6, 0x4306ff7d

    const/high16 v7, 0x43070000    # 135.0f

    const v8, 0x4306ff7d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x413f3b64    # 11.952f

    const/4 v4, 0x0

    const v5, 0x41bc4fdf    # 23.539f

    const v6, -0x40383127    # -1.561f

    const v7, 0x420a4bc7

    const v8, -0x3f70bc6a    # -4.477f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41938312    # 18.439f

    const v4, -0x3f6a3d71    # -4.68f

    const v5, 0x420eab02    # 35.667f

    const v6, -0x3eab6042    # -13.289f

    const v7, 0x424c9ba6    # 51.152f

    const v8, -0x3e2e24dd    # -26.232f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x40e39db2    # 7.113f

    const v4, -0x3f44ac08    # -5.854f

    const v5, 0x4159c6a8    # 13.611f

    const v6, -0x3eb92f1b    # -12.426f

    const v7, 0x419b2b02    # 19.396f

    const v8, -0x3e63374c    # -19.598f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41daf9db    # 27.372f

    const v4, -0x3dfed604    # -32.291f

    const v5, 0x426f48b4    # 59.821f

    const v6, -0x3d5bc625

    const v7, 0x42b29b23

    const v8, -0x3d5bc625

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41f4d0e5    # 30.602f

    const/4 v4, 0x0

    const v5, 0x42269062

    const v6, 0x41b36042    # 22.422f

    const v7, 0x427c47ae    # 63.07f

    const v8, 0x41b370a4    # 22.43f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41211eb8    # 10.07f

    const/4 v4, 0x0

    const v5, 0x41ca8106    # 25.313f

    const v6, -0x3effdf3b    # -8.008f

    const v7, 0x41ca8106    # 25.313f

    const v8, -0x3e342f1b    # -25.477f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x44323439

    const v4, 0x4479f364

    const v5, 0x442eacbc

    const v6, 0x4477cde3

    const v7, 0x442be042

    const v8, 0x4477cde3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x442c119a

    const v3, 0x4477cde3

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e5e8f5c    # -20.18f

    const/4 v4, 0x0

    const v5, -0x3dfb7cee

    const v6, 0x41b89375    # 23.072f

    const v7, -0x3d82449c

    const v8, 0x41b89375    # 23.072f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e0d8d50    # -30.306f

    const/4 v4, 0x0

    const v5, -0x3d7d9aa0

    const v6, -0x3da325e3

    const v7, -0x3d458ccd

    const v8, -0x3d535917

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e175810    # -29.082f

    const v4, -0x3dfedb23    # -32.286f

    const v5, -0x3d7e23d7    # -64.93f

    const v6, -0x3dc84189    # -45.936f

    const v7, -0x3d33420c

    const v8, -0x3dc84189    # -45.936f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3df245a2    # -35.432f

    const/4 v4, 0x0

    const v5, -0x3d788396

    const v6, 0x4160e148    # 14.055f

    const v7, -0x3d4876c9

    const v8, 0x42136b85    # 36.855f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e2ed70a    # -26.145f

    const v4, 0x41c4f5c3    # 24.62f

    const v5, -0x3dd61cac    # -42.472f

    const v6, 0x426e3021    # 59.547f

    const v7, -0x3dd61cac    # -42.472f

    const v8, 0x42c49604    # 98.293f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42951e35

    const v5, 0x4271c396

    const/high16 v6, 0x43070000    # 135.0f

    const/high16 v7, 0x43070000    # 135.0f

    const/high16 v8, 0x43070000    # 135.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x413f374c    # 11.951f

    const/4 v4, 0x0

    const v5, 0x41bc4bc7    # 23.537f

    const v6, -0x40383127    # -1.561f

    const v7, 0x420a4ac1

    const v8, -0x3f70cccd    # -4.475f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41938106    # 18.438f

    const v4, -0x3f6a3d71    # -4.68f

    const v5, 0x420ea9fc    # 35.666f

    const v6, -0x3eab6042    # -13.289f

    const v7, 0x424c9aa0    # 51.151f

    const v8, -0x3e2e24dd    # -26.232f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x40e3be77    # 7.117f

    const v4, -0x3f449375    # -5.857f

    const v5, 0x4159e76d    # 13.619f

    const v6, -0x3eb90e56    # -12.434f

    const v7, 0x419b4189    # 19.407f

    const v8, -0x3e631cac    # -19.611f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41db3333    # 27.4f

    const v4, -0x3dfea5e3

    const v5, 0x42711cac    # 60.278f

    const v6, -0x3d5a6b02    # -82.791f

    const v7, 0x42b3849c

    const v8, -0x3d5a6b02    # -82.791f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41f4ced9    # 30.601f

    const/4 v4, 0x0

    const v5, 0x4227cac1

    const v6, 0x41b8e354    # 23.111f

    const v7, 0x427d8312

    const v8, 0x41b8f3b6    # 23.119f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41211eb8    # 10.07f

    const/4 v4, 0x0

    const v5, 0x41ca8106    # 25.313f

    const v6, -0x3effdf3b    # -8.008f

    const v7, 0x41ca8106    # 25.313f

    const v8, -0x3e342f1b    # -25.477f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x443265a2

    const v4, 0x4479f364

    const v5, 0x442ede25

    const v6, 0x4477cde3

    const v7, 0x442c119a

    const v8, 0x4477cde3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x442c41ec

    const v3, 0x4477cde3

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e5e8d50    # -20.181f

    const/4 v4, 0x0

    const v5, -0x3dfa6e98

    const v6, 0x41bdd4fe    # 23.729f

    const v7, -0x3d813646

    const v8, 0x41bdd4fe    # 23.729f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->s:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3d7c9fbe

    const v4, -0x3da0851f    # -55.87f

    const v5, -0x3d4491ec

    const v6, -0x3d520937

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e175810    # -29.082f

    const v4, -0x3dfedb23    # -32.286f

    const v5, -0x3d7e23d7    # -64.93f

    const v6, -0x3dc84189    # -45.936f

    const v7, -0x3d33420c

    const v8, -0x3dc84189    # -45.936f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3df245a2    # -35.432f

    const/4 v4, 0x0

    const v5, -0x3d788396

    const v6, 0x4160e148    # 14.055f

    const v7, -0x3d4876c9

    const v8, 0x42136b85    # 36.855f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e2ed70a    # -26.145f

    const v4, 0x41c4f5c3    # 24.62f

    const v5, -0x3dd61cac    # -42.472f

    const v6, 0x426e3021    # 59.547f

    const v7, -0x3dd61cac    # -42.472f

    const v8, 0x42c49604    # 98.293f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42951e35

    const v5, 0x4271c396

    const/high16 v6, 0x43070000    # 135.0f

    const/high16 v7, 0x43070000    # 135.0f

    const/high16 v8, 0x43070000    # 135.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x413f3f7d    # 11.953f

    const/4 v4, 0x0

    const v5, 0x41bc51ec    # 23.54f

    const v6, -0x40383127    # -1.561f

    const v7, 0x420a4dd3    # 34.576f

    const v8, -0x3f70bc6a    # -4.477f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41938106    # 18.438f

    const v4, -0x3f6a4dd3    # -4.678f

    const v5, 0x420ea7f0

    const v6, -0x3eab6042    # -13.289f

    const v7, 0x424c9687    # 51.147f

    const v8, -0x3e2e28f6    # -26.23f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x40e3e76d    # 7.122f

    const v4, -0x3f448312    # -5.859f

    const v5, 0x415a0831    # 13.627f

    const v6, -0x3eb8f1aa    # -12.441f

    const v7, 0x419b5604    # 19.417f

    const v8, -0x3e630419    # -19.623f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41db72b0    # 27.431f

    const v4, -0x3dfe75c3

    const v5, 0x4272e560    # 60.724f

    const v6, -0x3d591a1d

    const v7, 0x42b467f0

    const v8, -0x3d591a1d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41f4ced9    # 30.601f

    const/4 v4, 0x0

    const v5, 0x4228fefa    # 42.249f

    const v6, 0x41be3f7d    # 23.781f

    const v7, 0x427eb852    # 63.68f

    const v8, 0x41be4fdf    # 23.789f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41211aa0    # 10.069f

    const/4 v4, 0x0

    const v5, 0x41ca7efa    # 25.312f

    const v6, -0x3effdf3b    # -8.008f

    const v7, 0x41ca7efa    # 25.312f

    const v8, -0x3e342f1b    # -25.477f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x443295e3

    const v4, 0x4479f364

    const v5, 0x442f0e66

    const v6, 0x4477cde3

    const v7, 0x442c41ec

    const v8, 0x4477cde3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x442c7073

    const v3, 0x4477cde3

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e5e8f5c    # -20.18f

    const/4 v4, 0x0

    const v5, -0x3df96a7f    # -33.646f

    const v6, 0x41c2e354    # 24.361f

    const v7, -0x3d80322d    # -63.951f

    const v8, 0x41c2e354    # 24.361f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e0d8d50    # -30.306f

    const/4 v4, 0x0

    const v5, -0x3d7bad91

    const v6, -0x3d9dfdf4

    const v7, -0x3d439fbe

    const v8, -0x3d50c51f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e175810    # -29.082f

    const v4, -0x3dfedb23    # -32.286f

    const v5, -0x3d7e23d7    # -64.93f

    const v6, -0x3dc84189    # -45.936f

    const v7, -0x3d33420c

    const v8, -0x3dc84189    # -45.936f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3df245a2    # -35.432f

    const/4 v4, 0x0

    const v5, -0x3d788396

    const v6, 0x4160e148    # 14.055f

    const v7, -0x3d4876c9

    const v8, 0x42136b85    # 36.855f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e2ed70a    # -26.145f

    const v4, 0x41c4f5c3    # 24.62f

    const v5, -0x3dd61cac    # -42.472f

    const v6, 0x426e3021    # 59.547f

    const v7, -0x3dd61cac    # -42.472f

    const v8, 0x42c49604    # 98.293f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42951e35

    const v5, 0x4271c396

    const/high16 v6, 0x43070000    # 135.0f

    const/high16 v7, 0x43070000    # 135.0f

    const/high16 v8, 0x43070000    # 135.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x413f3f7d    # 11.953f

    const/4 v4, 0x0

    const v5, 0x41bc51ec    # 23.54f

    const v6, -0x40383127    # -1.561f

    const v7, 0x420a4dd3    # 34.576f

    const v8, -0x3f70bc6a    # -4.477f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41938106    # 18.438f

    const v4, -0x3f6a4dd3    # -4.678f

    const v5, 0x420ea7f0

    const v6, -0x3eab6042    # -13.289f

    const v7, 0x424c9687    # 51.147f

    const v8, -0x3e2e28f6    # -26.23f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x40e40831    # 7.126f

    const v4, -0x3f44624e    # -5.863f

    const v5, 0x415a24dd    # 13.634f

    const v6, -0x3eb8d917    # -12.447f

    const v7, 0x419b6a7f    # 19.427f

    const v8, -0x3e62ef9e    # -19.633f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41dba9fc    # 27.458f

    const v4, -0x3dfe47ae    # -32.43f

    const v5, 0x42749cac    # 61.153f

    const v6, -0x3d57d2f2

    const v7, 0x42b5420c

    const v8, -0x3d57d2f2

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41f4d0e5    # 30.602f

    const/4 v4, 0x0

    const v5, 0x422a29fc    # 42.541f

    const v6, 0x41c370a4    # 24.43f

    const v7, 0x427fe24e    # 63.971f

    const v8, 0x41c38106    # 24.438f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41211eb8    # 10.07f

    const/4 v4, 0x0

    const v5, 0x41ca8106    # 25.313f

    const v6, -0x3effdf3b    # -8.008f

    const v7, 0x41ca8106    # 25.313f

    const v8, -0x3e342f1b    # -25.477f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x4432c46a

    const v4, 0x4479f364

    const v5, 0x442f3cee

    const v6, 0x4477cde3

    const v7, 0x442c7073

    const v8, 0x4477cde3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x442c9c08

    const v3, 0x4477cde3

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e5e8d50    # -20.181f

    const/4 v4, 0x0

    const v5, -0x3df875c3

    const v6, 0x41c79fbe    # 24.953f

    const v7, -0x3d7f9f3b

    const v8, 0x41c79fbe    # 24.953f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e0d8d50    # -30.306f

    const/4 v4, 0x0

    const v5, -0x3d7acac1

    const v6, -0x3d9b9fbe

    const v7, -0x3d42bd71    # -94.63f

    const v8, -0x3d4f9604    # -88.207f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e175810    # -29.082f

    const v4, -0x3dfedb23    # -32.286f

    const v5, -0x3d7e23d7    # -64.93f

    const v6, -0x3dc84189    # -45.936f

    const v7, -0x3d33420c

    const v8, -0x3dc84189    # -45.936f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3df245a2    # -35.432f

    const/4 v4, 0x0

    const v5, -0x3d788396

    const v6, 0x4160e148    # 14.055f

    const v7, -0x3d4876c9

    const v8, 0x42136b85    # 36.855f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e2ed70a    # -26.145f

    const v4, 0x41c4f5c3    # 24.62f

    const v5, -0x3dd61cac    # -42.472f

    const v6, 0x426e3021    # 59.547f

    const v7, -0x3dd61cac    # -42.472f

    const v8, 0x42c49604    # 98.293f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42951e35

    const v5, 0x4271c396

    const/high16 v6, 0x43070000    # 135.0f

    const/high16 v7, 0x43070000    # 135.0f

    const/high16 v8, 0x43070000    # 135.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x413f3f7d    # 11.953f

    const/4 v4, 0x0

    const v5, 0x41bc51ec    # 23.54f

    const v6, -0x40383127    # -1.561f

    const v7, 0x420a4dd3    # 34.576f

    const v8, -0x3f70bc6a    # -4.477f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41938106    # 18.438f

    const v4, -0x3f6a4dd3    # -4.678f

    const v5, 0x420ea7f0

    const v6, -0x3eab6042    # -13.289f

    const v7, 0x424c9687    # 51.147f

    const v8, -0x3e2e28f6    # -26.23f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x40e420c5    # 7.129f

    const v4, -0x3f4451ec    # -5.865f

    const v5, 0x415a3d71    # 13.64f

    const v6, -0x3eb8c083    # -12.453f

    const v7, 0x419b7ae1    # 19.435f

    const v8, -0x3e62d70a    # -19.645f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41dbe148    # 27.485f

    const v4, -0x3dfe1db2    # -32.471f

    const v5, 0x42763958    # 61.556f

    const v6, -0x3d56a2d1    # -84.682f

    const v7, 0x42b60ed9    # 91.029f

    const v8, -0x3d56a2d1    # -84.682f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41f4ced9    # 30.601f

    const/4 v4, 0x0

    const v5, 0x422b4083    # 42.813f

    const v6, 0x41c847ae    # 25.035f

    const v7, 0x42807c6a

    const v8, 0x41c85810    # 25.043f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41211aa0    # 10.069f

    const/4 v4, 0x0

    const v5, 0x41ca7efa    # 25.312f

    const v6, -0x3effdf3b    # -8.008f

    const v7, 0x41ca7efa    # 25.312f

    const v8, -0x3e342f1b    # -25.477f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x4432eff0

    const v4, 0x4479f364

    const v5, 0x442f6873

    const v6, 0x4477cde3

    const v7, 0x442c9c08

    const v8, 0x4477cde3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x442cbdd3

    const v3, 0x4477cde3

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e5e8f5c    # -20.18f

    const/4 v4, 0x0

    const v5, -0x3df7b958    # -34.069f

    const v6, 0x41cb4bc7    # 25.412f

    const v7, -0x3d7f4083    # -64.374f

    const v8, 0x41cb4bc7    # 25.412f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e0d8d50    # -30.306f

    const/4 v4, 0x0

    const v5, -0x3d7a1b23

    const v6, -0x3d99c9ba

    const v7, -0x3d420d50    # -94.974f

    const v8, -0x3d4eab02    # -88.666f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e175810    # -29.082f

    const v4, -0x3dfedb23    # -32.286f

    const v5, -0x3d7e23d7    # -64.93f

    const v6, -0x3dc84189    # -45.936f

    const v7, -0x3d33420c

    const v8, -0x3dc84189    # -45.936f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3df245a2    # -35.432f

    const/4 v4, 0x0

    const v5, -0x3d788396

    const v6, 0x4160e148    # 14.055f

    const v7, -0x3d4876c9

    const v8, 0x42136b85    # 36.855f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e2ed70a    # -26.145f

    const v4, 0x41c4f5c3    # 24.62f

    const v5, -0x3dd61cac    # -42.472f

    const v6, 0x426e3021    # 59.547f

    const v7, -0x3dd61cac    # -42.472f

    const v8, 0x42c49604    # 98.293f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42951e35

    const v5, 0x4271c396

    const/high16 v6, 0x43070000    # 135.0f

    const/high16 v7, 0x43070000    # 135.0f

    const/high16 v8, 0x43070000    # 135.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x413f3f7d    # 11.953f

    const/4 v4, 0x0

    const v5, 0x41bc51ec    # 23.54f

    const v6, -0x40383127    # -1.561f

    const v7, 0x420a4dd3    # 34.576f

    const v8, -0x3f70bc6a    # -4.477f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41938106    # 18.438f

    const v4, -0x3f6a4dd3    # -4.678f

    const v5, 0x420ea7f0

    const v6, -0x3eab6042    # -13.289f

    const v7, 0x424c9687    # 51.147f

    const v8, -0x3e2e28f6    # -26.23f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x40e43958    # 7.132f

    const v4, -0x3f443127    # -5.869f

    const v5, 0x415a51ec    # 13.645f

    const v6, -0x3eb8a7f0    # -12.459f

    const v7, 0x419b872b    # 19.441f

    const v8, -0x3e62c8b4    # -19.652f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41dc0c4a    # 27.506f

    const v4, -0x3dfdfbe7

    const v5, 0x427778d5    # 61.868f

    const v6, -0x3d55b5c3

    const v7, 0x42b6ae14    # 91.34f

    const v8, -0x3d55b5c3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41f4ced9    # 30.601f

    const/4 v4, 0x0

    const v5, 0x422c1893

    const v6, 0x41cc0c4a    # 25.506f

    const v7, 0x4280e873

    const v8, 0x41cc1cac    # 25.514f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41211eb8    # 10.07f

    const/4 v4, 0x0

    const v5, 0x41ca8106    # 25.313f

    const v6, -0x3effdf3b    # -8.008f

    const v7, 0x41ca8106    # 25.313f

    const v8, -0x3e342f1b    # -25.477f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x443311cb

    const v4, 0x4479f364

    const v5, 0x442f8a4e

    const v6, 0x4477cde3

    const v7, 0x442cbdd3

    const v8, 0x4477cde3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x442cb3c7

    const v3, 0x4478053f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e642b02    # -19.479f

    const/4 v4, 0x0

    const v5, -0x3dfc77cf    # -32.883f

    const v6, 0x41c39375    # 24.447f

    const v7, -0x3d88322d    # -61.951f

    const v8, 0x41c48b44    # 24.568f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x428624dd    # -0.061f

    const/4 v4, 0x0

    const v5, -0x42083127    # -0.121f

    const v6, -0x443b645a    # -0.006f

    const v7, -0x41c5a1cb    # -0.182f

    const v8, -0x443b645a    # -0.006f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x3d48b439    # 0.049f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;F)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3d0f5c29    # 0.035f

    const/4 v4, 0x0

    const v5, 0x3d8f5c29    # 0.07f

    const v6, -0x44fced91    # -0.002f

    const v7, 0x3dd70a3d    # 0.105f

    const v8, -0x44fced91    # -0.002f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41eacccd    # 29.35f

    const v4, 0x3df3b646    # 0.119f

    const v5, 0x42256042

    const v6, 0x41c53f7d    # 24.656f

    const v7, 0x42781ba6    # 62.027f

    const v8, 0x41c54fdf    # 24.664f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x411bbe77    # 9.734f

    const/4 v4, 0x0

    const v5, 0x41c3c49c    # 24.471f

    const v6, -0x3f084189    # -7.742f

    const v7, 0x41c3c49c    # 24.471f

    const v8, -0x3e3af7cf    # -24.629f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x4432d1db

    const v4, 0x447a1883    # 1000.383f

    const v5, 0x442f6862

    const v6, 0x4478053f

    const v7, 0x442cb3c7

    const v8, 0x4478053f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x4404dd3f

    const v3, 0x4467fda2

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e175810    # -29.082f

    const v4, -0x3dfedb23    # -32.286f

    const v5, -0x3d7e23d7    # -64.93f

    const v6, -0x3dc84189    # -45.936f

    const v7, -0x3d33420c

    const v8, -0x3dc84189    # -45.936f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3d6c67f0

    const/4 v4, 0x0

    const v5, -0x3cf9ec08

    const v6, 0x4273c9ba

    const v7, -0x3cf9ec08

    const v8, 0x4306f687

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42929604    # 73.293f

    const v5, 0x426df6c9

    const v6, 0x4306fa1d

    const v7, 0x430633b6

    const v8, 0x4306fa1d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x421c449c

    const/4 v4, 0x0

    const v5, 0x42955893

    const v6, -0x3e98872b    # -14.467f

    const v7, 0x42cd5687

    const v8, -0x3dc5fbe7

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41dfac08    # 27.959f

    const v4, -0x3e000c4a    # -31.994f

    const v5, 0x427270a4    # 60.61f

    const v6, -0x3d530106

    const v7, 0x42b01a1d

    const v8, -0x3d4e8831

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, -0x4270a3d7    # -0.07f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;F)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x441430e5

    const v4, 0x447d8d3f

    const v5, 0x440bdb23

    const v6, 0x446fc0a4    # 959.01f

    const v7, 0x4404dd3f

    const v8, 0x4467fda2

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x442cb45a

    const v3, 0x4478875c

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e7153f8    # -17.834f

    const/4 v4, 0x0

    const v5, -0x3e0f3333    # -30.1f

    const v6, 0x41b16e98    # 22.179f

    const v7, -0x3d9ef3b6

    const v8, 0x41b4a9fc    # 22.583f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x427ef9db    # -0.063f

    const/4 v4, 0x0

    const/high16 v5, -0x42000000    # -0.125f

    const v6, -0x445c28f6    # -0.005f

    const v7, -0x41bf7cee    # -0.188f

    const v8, -0x445c28f6    # -0.005f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x3d408312    # 0.047f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;F)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3d1fbe77    # 0.039f

    const v4, -0x457ced91    # -0.001f

    const v5, 0x3d9fbe77    # 0.078f

    const v6, -0x447ced91    # -0.004f

    const v7, 0x3def9db2    # 0.117f

    const v8, -0x447ced91    # -0.004f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41d353f8    # 26.416f

    const v4, 0x3ecbc6a8    # 0.398f

    const v5, 0x4215999a    # 37.4f

    const v6, 0x41b54fdf    # 22.664f

    const v7, 0x426153f8    # 56.332f

    const v8, 0x41b56042    # 22.672f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x410f2f1b    # 8.949f

    const/4 v4, 0x0

    const v5, 0x41b3f3b6    # 22.494f

    const v6, -0x3f1c4189    # -7.117f

    const v7, 0x41b3f3b6    # 22.494f

    const v8, -0x3e4ae354    # -22.639f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x44325408

    const v4, 0x447a6fae

    const v5, 0x442f3127

    const v6, 0x4478875c

    const v7, 0x442cb45a

    const v8, 0x4478875c

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x4404dd3f

    const v3, 0x4467fda2

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e175810    # -29.082f

    const v4, -0x3dfedb23    # -32.286f

    const v5, -0x3d7e23d7    # -64.93f

    const v6, -0x3dc84189    # -45.936f

    const v7, -0x3d33420c

    const v8, -0x3dc84189    # -45.936f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3d6c67f0

    const/4 v4, 0x0

    const v5, -0x3cf9ec08

    const v6, 0x4273c9ba

    const v7, -0x3cf9ec08

    const v8, 0x4306f687

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42929604    # 73.293f

    const v5, 0x426df6c9

    const v6, 0x4306fa1d

    const v7, 0x430633b6

    const v8, 0x4306fa1d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x421c449c

    const/4 v4, 0x0

    const v5, 0x42955893

    const v6, -0x3e98872b    # -14.467f

    const v7, 0x42cd5687

    const v8, -0x3dc5fbe7

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41df9168    # 27.946f

    const v4, -0x3e002b02    # -31.979f

    const v5, 0x425d4ac1

    const v6, -0x3d5a37cf

    const v7, 0x429b1917

    const v8, -0x3d4eb958    # -88.638f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, -0x4216872b    # -0.114f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;F)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x4412dac1

    const v4, 0x447ca3f8

    const v5, 0x440bdac1

    const v6, 0x446fc031

    const v7, 0x4404dd3f

    const v8, 0x4467fda2

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x442cb51f

    const v3, 0x44790979

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e7e78d5    # -16.191f

    const/4 v4, 0x0

    const v5, -0x3e2574bc    # -27.318f

    const v6, 0x419f47ae    # 19.91f

    const v7, -0x3db5b646

    const v8, 0x41a4c8b4    # 20.598f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x427ced91    # -0.064f

    const/4 v4, 0x0

    const v5, -0x41fbe76d    # -0.129f

    const v6, -0x447ced91    # -0.004f

    const v7, -0x41ba5e35    # -0.193f

    const v8, -0x445c28f6    # -0.005f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x3d343958    # 0.044f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;F)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3d3020c5    # 0.043f

    const/4 v4, 0x0

    const v5, 0x3db020c5    # 0.086f

    const v6, -0x447ced91    # -0.004f

    const v7, 0x3e041893    # 0.129f

    const v8, -0x447ced91    # -0.004f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41bbd70a    # 23.48f

    const v4, 0x3f2d9168    # 0.678f

    const v5, 0x4205d3f8    # 33.457f

    const v6, 0x41a56042    # 20.672f

    const v7, 0x424a8c4a

    const v8, 0x41a56c8b    # 20.678f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x4102978d    # 8.162f

    const/4 v4, 0x0

    const v5, 0x41a420c5    # 20.516f

    const v6, -0x3f3051ec    # -6.49f

    const v7, 0x41a420c5    # 20.516f

    const v8, -0x3e5ad0e5    # -20.648f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x4431d625

    const v4, 0x447ac6d9

    const v5, 0x442ef9ba    # 699.902f

    const v6, 0x44790979

    const v7, 0x442cb51f

    const v8, 0x44790979

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x4404dd3f

    const v3, 0x4467fda2

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e175810    # -29.082f

    const v4, -0x3dfedb23    # -32.286f

    const v5, -0x3d7e23d7    # -64.93f

    const v6, -0x3dc84189    # -45.936f

    const v7, -0x3d33420c

    const v8, -0x3dc84189    # -45.936f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3d6c67f0

    const/4 v4, 0x0

    const v5, -0x3cf9ec08

    const v6, 0x4273c9ba

    const v7, -0x3cf9ec08

    const v8, 0x4306f687

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42929604    # 73.293f

    const v5, 0x426df6c9

    const v6, 0x4306fa1d

    const v7, 0x430633b6

    const v8, 0x4306fa1d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x421c449c

    const/4 v4, 0x0

    const v5, 0x42955893

    const v6, -0x3e98872b    # -14.467f

    const v7, 0x42cd5687

    const v8, -0x3dc5fbe7

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41df6c8b    # 27.928f

    const v4, -0x3e005810    # -31.957f

    const v5, 0x424972b0    # 50.362f

    const v6, -0x3d61051f    # -79.49f

    const v7, 0x4287676d

    const v8, -0x3d4ef021

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, -0x41c6a7f0    # -0.181f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;F)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x441199db

    const v4, 0x447bc893

    const v5, 0x440bd9fc

    const v6, 0x446fbf6d

    const v7, 0x4404dd3f

    const v8, 0x4467fda2

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x442cb5c3

    const v3, 0x44798ba6

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e973f7d    # -14.547f

    const/4 v4, 0x0

    const v5, -0x3e3bb852    # -24.535f

    const v6, 0x418d24dd    # 17.643f

    const v7, -0x3dcc77cf    # -44.883f

    const v8, 0x4194e76d    # 18.613f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x427ced91    # -0.064f

    const/4 v4, 0x0

    const v5, -0x41f9db23    # -0.131f

    const v6, -0x447ced91    # -0.004f

    const v7, -0x41b645a2    # -0.197f

    const v8, -0x445c28f6    # -0.005f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x3d23d70a    # 0.04f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;F)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3d408312    # 0.047f

    const/4 v4, 0x0

    const v5, 0x3dc08312    # 0.094f

    const v6, -0x447ced91    # -0.004f

    const v7, 0x3e0e5604    # 0.139f

    const v8, -0x447ced91    # -0.004f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41a46042    # 20.547f

    const v4, 0x3f74fdf4    # 0.957f

    const v5, 0x41ec1cac    # 29.514f

    const v6, 0x419574bc    # 18.682f

    const v7, 0x4233c396

    const v8, 0x41957cee    # 18.686f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/high16 v3, 0x40ec0000    # 7.375f

    const/4 v4, 0x0

    const v5, 0x41944fdf    # 18.539f

    const v6, -0x3f4451ec    # -5.865f

    const v7, 0x41944fdf    # 18.539f

    const v8, -0x3e6abc6a    # -18.658f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x44315842

    const v4, 0x447b1e25

    const v5, 0x442ec27f

    const v6, 0x44798ba6

    const v7, 0x442cb5c3

    const v8, 0x44798ba6

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x43d68ae1

    const v3, 0x445c81ba

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3d6c67f0

    const/4 v4, 0x0

    const v5, -0x3cf9ec08

    const v6, 0x4273c9ba

    const v7, -0x3cf9ec08

    const v8, 0x4306f687

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42929604    # 73.293f

    const v5, 0x426df6c9

    const v6, 0x4306fa1d

    const v7, 0x430633b6

    const v8, 0x4306fa1d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x421c449c

    const/4 v4, 0x0

    const v5, 0x42955893

    const v6, -0x3e98872b    # -14.467f

    const v7, 0x42cd5687

    const v8, -0x3dc5fbe7

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41df3127    # 27.899f

    const v4, -0x3e009ba6    # -31.924f

    const v5, 0x42373852    # 45.805f

    const v6, -0x3d6753f8

    const v7, 0x426aa8f6    # 58.665f

    const v8, -0x3d4f322d    # -88.402f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, -0x416a7efa    # -0.292f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;F)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3eb428f6    # -12.74f

    const v4, -0x3eb33b64    # -12.798f

    const v5, -0x3e06cccd    # -31.15f

    const v6, -0x3d98d2f2

    const v7, -0x3d93a7f0

    const v8, -0x3d4e6354    # -88.806f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x43fb3000    # 502.375f

    const v4, 0x445feb54

    const v5, 0x43e94375

    const v6, 0x445c81ba

    const v7, 0x43d68ae1

    const v8, 0x445c81ba

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x442cb666

    const v3, 0x447a0dc3    # 1000.215f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3eb19168    # -12.902f

    const/4 v4, 0x0

    const v5, -0x3e51fbe7    # -21.752f

    const v6, 0x4175f7cf    # 15.373f

    const v7, -0x3de33a5e    # -39.193f

    const v8, 0x41850831    # 16.629f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x4278d4fe    # -0.066f

    const/4 v4, 0x0

    const v5, -0x41f5c28f    # -0.135f

    const v6, -0x43bb645a    # -0.012f

    const v7, -0x41b22d0e    # -0.201f

    const v8, -0x43bb645a    # -0.012f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x3d449ba6    # 0.048f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;F)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3d48b439    # 0.049f

    const v4, -0x457ced91    # -0.001f

    const v5, 0x3dcccccd    # 0.1f

    const v6, -0x43ec8b44    # -0.009f

    const v7, 0x3e19999a    # 0.15f

    const v8, -0x43ec8b44    # -0.009f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x418cdf3b    # 17.609f

    const v4, 0x3f9e353f    # 1.236f

    const v5, 0x41cc8f5c    # 25.57f

    const v6, 0x41858312    # 16.689f

    const v7, 0x421cf9db    # 39.244f

    const v8, 0x41858b44    # 16.693f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x40d2e148    # 6.59f

    const/4 v4, 0x0

    const v5, 0x41848106    # 16.563f

    const v6, -0x3f5851ec    # -5.24f

    const v7, 0x41848106    # 16.563f

    const v8, -0x3e7aa3d7    # -16.67f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x4430da5e

    const v4, 0x447b7550

    const v5, 0x442e8b23

    const v6, 0x447a0dc3    # 1000.215f

    const v7, 0x442cb666

    const v8, 0x447a0dc3    # 1000.215f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x43d68ae1

    const v3, 0x445c81ba

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3d6c67f0

    const/4 v4, 0x0

    const v5, -0x3cf9ec08

    const v6, 0x4273c9ba

    const v7, -0x3cf9ec08

    const v8, 0x4306f687

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42929604    # 73.293f

    const v5, 0x426df6c9

    const v6, 0x4306fa1d

    const v7, 0x430633b6

    const v8, 0x4306fa1d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x421c449c

    const/4 v4, 0x0

    const v5, 0x42955893

    const v6, -0x3e98872b    # -14.467f

    const v7, 0x42cd5687

    const v8, -0x3dc5fbe7

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41dec49c    # 27.846f

    const v4, -0x3e011893    # -31.863f

    const v5, 0x4226fcee

    const v6, -0x3d6d0fdf

    const v7, 0x424a8a3d

    const v8, -0x3d4f8937

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, -0x410c49ba    # -0.476f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;F)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3ef31687    # -8.807f

    const v4, -0x3e85eb85    # -15.63f

    const v5, -0x3e46cccd    # -23.15f

    const v6, -0x3d98c189    # -57.811f

    const v7, -0x3db3c5a2    # -51.057f

    const v8, -0x3d4e6a7f    # -88.792f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x43fb3000    # 502.375f

    const v4, 0x445feb54

    const v5, 0x43e94375

    const v6, 0x445c81ba

    const v7, 0x43d68ae1

    const v8, 0x445c81ba

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x442cb6fa

    const v3, 0x447a8fdf

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3ecbdf3b    # -11.258f

    const/4 v4, 0x0

    const v5, -0x3e683f7d    # -18.969f

    const v6, 0x4151ae14    # 13.105f

    const v7, -0x3df9fdf4

    const v8, 0x416a4dd3    # 14.644f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x4274bc6a    # -0.068f

    const v4, 0x3a83126f    # 0.001f

    const v5, -0x41f1a9fc    # -0.139f

    const v6, -0x43cbc6a8    # -0.011f

    const v7, -0x41ac0831    # -0.207f

    const v8, -0x43cbc6a8    # -0.011f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x3d343958    # 0.044f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;F)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3d591687    # 0.053f

    const/4 v4, 0x0

    const v5, 0x3ddb22d1    # 0.107f

    const v6, -0x43ec8b44    # -0.009f

    const v7, 0x3e23d70a    # 0.16f

    const v8, -0x43ec8b44    # -0.009f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x416ad0e5    # 14.676f

    const v4, 0x3fc20c4a    # 1.516f

    const v5, 0x41ad0419    # 21.627f

    const v6, 0x416b26e9    # 14.697f

    const v7, 0x4206322d    # 33.549f

    const v8, 0x416b374c    # 14.701f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x40b9b22d    # 5.803f

    const/4 v4, 0x0

    const v5, 0x41696042    # 14.586f

    const v6, -0x3f6c51ec    # -4.615f

    const v7, 0x41696042    # 14.586f

    const v8, -0x3e951eb8    # -14.68f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x44305c7b

    const v4, 0x447bcc7b

    const v5, 0x442e53e7

    const v6, 0x447a8fdf

    const v7, 0x442cb6fa

    const v8, 0x447a8fdf

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x43d68ae1

    const v3, 0x445c81ba

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3d6c67f0

    const/4 v4, 0x0

    const v5, -0x3cf9ec08

    const v6, 0x4273c9ba

    const v7, -0x3cf9ec08

    const v8, 0x4306f687

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42929604    # 73.293f

    const v5, 0x426df6c9

    const v6, 0x4306fa1d

    const v7, 0x430633b6

    const v8, 0x4306fa1d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x421c449c

    const/4 v4, 0x0

    const v5, 0x42955893

    const v6, -0x3e98872b    # -14.467f

    const v7, 0x42cd5687

    const v8, -0x3dc5fbe7

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41ddf9db    # 27.747f

    const/high16 v4, -0x3e020000    # -31.75f

    const v5, 0x42192e14

    const v6, -0x3d723127    # -70.904f

    const v7, 0x422f6666    # 43.85f

    const v8, -0x3d5011ec

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, -0x40ad9168    # -0.822f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;F)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3f503127    # -5.494f

    const v4, -0x3e6fc8b4    # -18.027f

    const v5, -0x3e7cac08    # -16.416f

    const v6, -0x3d98d810

    const v7, -0x3dcee979    # -44.272f

    const v8, -0x3d4e92f2

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x43fb3000    # 502.375f

    const v4, 0x445feb54

    const v5, 0x43e94375

    const v6, 0x445c81ba

    const v7, 0x43d68ae1

    const v8, 0x445c81ba

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x442cb7be

    const v3, 0x447b11fc

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3ee628f6    # -9.615f

    const/4 v4, 0x0

    const v5, -0x3e7e7efa    # -16.188f

    const v6, 0x412d645a    # 10.837f

    const v7, -0x3e217cee    # -27.814f

    const v8, 0x414a872b    # 12.658f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x4274bc6a    # -0.068f

    const v4, 0x3a83126f    # 0.001f

    const v5, -0x41ef9db2    # -0.141f

    const v6, -0x43dc28f6    # -0.01f

    const v7, -0x41a7ef9e    # -0.211f

    const v8, -0x43cbc6a8    # -0.011f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x3d2c0831    # 0.042f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;F)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3d6978d5    # 0.057f

    const v4, -0x457ced91    # -0.001f

    const v5, 0x3deb851f    # 0.115f

    const v6, -0x43dc28f6    # -0.01f

    const v7, 0x3e3020c5    # 0.172f

    const v8, -0x43dc28f6    # -0.01f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x413bd70a    # 11.74f

    const v4, 0x3fe5a1cb    # 1.794f

    const v5, 0x418d74bc    # 17.682f

    const v6, 0x414b4396    # 12.704f

    const v7, 0x41ded4fe    # 27.854f

    const v8, 0x414b53f8    # 12.708f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x40a08312    # 5.016f

    const/4 v4, 0x0

    const v5, 0x4149b646    # 12.607f

    const v6, -0x3f80c49c    # -3.988f

    const v7, 0x4149b646    # 12.607f

    const v8, -0x3eb4f5c3    # -12.69f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x442fdea8

    const v4, 0x447c23c7

    const v5, 0x442e1c9c

    const v6, 0x447b11fc

    const v7, 0x442cb7be

    const v8, 0x447b11fc

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x43d68ae1

    const v3, 0x445c81ba

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3d6c67f0

    const/4 v4, 0x0

    const v5, -0x3cf9ec08

    const v6, 0x4273c9ba

    const v7, -0x3cf9ec08

    const v8, 0x4306f687

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42929687

    const v5, 0x426df6c9

    const v6, 0x4306fa1d

    const v7, 0x430633b6

    const v8, 0x4306fa1d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x421c449c

    const/4 v4, 0x0

    const v5, 0x42955893

    const v6, -0x3e98872b    # -14.467f

    const v7, 0x42cd5687

    const v8, -0x3dc5fcee

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41dc1cac    # 27.514f

    const v4, -0x3e041cac    # -31.486f

    const v5, 0x420e3439

    const v6, -0x3d76f8d5    # -68.514f

    const v7, 0x421a3e77    # 38.561f

    const v8, -0x3d513021

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, -0x402d70a4    # -1.645f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;F)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3fc3c6a8    # -2.941f

    const v4, -0x3e60b021    # -19.914f

    const v5, -0x3ecbf7cf    # -11.252f

    const v6, -0x3d99570a    # -57.665f

    const v7, -0x3de41168

    const v8, -0x3d4f199a    # -88.45f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x43fb3000    # 502.375f

    const v4, 0x445feb54

    const v5, 0x43e94375

    const v6, 0x445c81ba

    const v7, 0x43d68ae1

    const v8, 0x445c81ba

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x442cb862

    const v3, 0x447b9419

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3f00ed91    # -7.971f

    const/4 v4, 0x0

    const v5, -0x3ea98937    # -13.404f

    const v6, 0x41091687    # 8.568f

    const v7, -0x3e4f0419    # -22.123f

    const v8, 0x412ac8b4    # 10.674f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x426c8b44    # -0.072f

    const v4, 0x3b03126f    # 0.002f

    const v5, -0x41ea7efa    # -0.146f

    const v6, -0x43dc28f6    # -0.01f

    const v7, -0x419fbe77    # -0.219f

    const v8, -0x43dc28f6    # -0.01f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x3d178d50    # 0.037f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;F)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3d79db23    # 0.061f

    const/4 v4, 0x0

    const v5, 0x3dfbe76d    # 0.123f

    const v6, -0x43dc28f6    # -0.01f

    const v7, 0x3e3c6a7f    # 0.184f

    const v8, -0x43dc28f6    # -0.01f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x410ce979    # 8.807f

    const v4, 0x4004bc6a    # 2.074f

    const v5, 0x415bd70a    # 13.74f

    const v6, 0x412b6873    # 10.713f

    const v7, 0x41b14396    # 22.158f

    const v8, 0x412b70a4    # 10.715f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x408753f8    # 4.229f

    const/4 v4, 0x0

    const v5, 0x412a1893    # 10.631f

    const v6, -0x3fa8c49c    # -3.363f

    const v7, 0x412a1893    # 10.631f

    const v8, -0x3ed4d0e5    # -10.699f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x442f60c5

    const v4, 0x447c7ae1

    const v5, 0x442de53f

    const v6, 0x447b9419

    const v7, 0x442cb862

    const v8, 0x447b9419

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x43d68ae1

    const v3, 0x445c81ba

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3d6c67f0

    const/4 v4, 0x0

    const v5, -0x3cf9ec08

    const v6, 0x4273c9ba

    const v7, -0x3cf9ec08

    const v8, 0x4306f687

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42929604    # 73.293f

    const v5, 0x426df5c3    # 59.49f

    const v6, 0x4306fa1d

    const v7, 0x430633b6

    const v8, 0x4306fa1d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x421c449c

    const/4 v4, 0x0

    const v5, 0x42955893

    const v6, -0x3e98872b    # -14.467f

    const v7, 0x42cd5687

    const v8, -0x3dc5fbe7

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41d70831    # 26.879f

    const v4, -0x3e09ef9e    # -30.758f

    const v5, 0x4206126f

    const v6, -0x3d7c9d2f    # -65.693f

    const v7, 0x420bf6c9

    const v8, -0x3d5429fc    # -85.918f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, -0x3f8147ae    # -3.98f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;F)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x40560419    # -1.328f

    const v4, -0x3e5624dd    # -21.232f

    const v5, -0x3eff47ae    # -8.045f

    const v6, -0x3d9b1eb8    # -57.22f

    const v7, -0x3df25917

    const v8, -0x3d50cbc7

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x43fb3000    # 502.375f

    const v4, 0x445feb54

    const v5, 0x43e94375

    const v6, 0x445c81ba

    const v7, 0x43d68ae1

    const v8, 0x445c81ba

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x442cb906

    const v3, 0x447c1646

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3f359168    # -6.326f

    const/4 v4, 0x0

    const v5, -0x3ed61062    # -10.621f

    const v6, 0x40c9a1cb    # 6.301f

    const v7, -0x3e7c872b    # -16.434f

    const v8, 0x410b0625    # 8.689f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x426c8b44    # -0.072f

    const/4 v4, 0x0

    const v5, -0x41e872b0    # -0.148f

    const v6, -0x43dc28f6    # -0.01f

    const v7, -0x419ba5e3    # -0.223f

    const v8, -0x43bb645a    # -0.012f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x3d0f5c29    # 0.035f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;F)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3d83126f    # 0.064f

    const/4 v4, 0x0

    const v5, 0x3e083127    # 0.133f

    const v6, -0x43dc28f6    # -0.01f

    const v7, 0x3e47ae14    # 0.195f

    const v8, -0x43dc28f6    # -0.01f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x40bbdf3b    # 5.871f

    const v4, 0x4016a7f0    # 2.354f

    const v5, 0x411cb852    # 9.795f

    const v6, 0x410b8937    # 8.721f

    const v7, 0x4183b021    # 16.461f

    const v8, 0x410b9168    # 8.723f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x405c5a1d    # 3.443f

    const/4 v4, 0x0

    const v5, 0x410a76c9    # 8.654f

    const v6, -0x3fd0c49c    # -2.738f

    const v7, 0x410a76c9    # 8.654f

    const v8, -0x3ef4a7f0    # -8.709f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x442ee2e1

    const v4, 0x447cd21d

    const v5, 0x442dae04

    const v6, 0x447c1646

    const v7, 0x442cb906

    const v8, 0x447c1646

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x43d68ae1

    const v3, 0x445c81ba

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3d6c67f0

    const/4 v4, 0x0

    const v5, -0x3cf9ec08

    const v6, 0x4273c9ba

    const v7, -0x3cf9ec08

    const v8, 0x4306f687

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42929604    # 73.293f

    const v5, 0x426df6c9

    const v6, 0x4306fa1d

    const v7, 0x430633b6

    const v8, 0x4306fa1d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x421c449c

    const/4 v4, 0x0

    const v5, 0x42955893

    const v6, -0x3e98872b    # -14.467f

    const v7, 0x42cd5687

    const v8, -0x3dc5fbe7

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41cdc8b4    # 25.723f

    const v4, -0x3e148312    # -29.436f

    const v5, 0x42008c4a

    const v6, -0x3d874fdf    # -62.172f

    const v7, 0x4204b22d    # 33.174f

    const v8, -0x3d59d1ec    # -83.09f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, -0x3ef0e979    # -8.943f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;F)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x40b70a3d    # -0.785f

    const v4, -0x3e50978d    # -21.926f

    const v5, -0x3f1cfdf4    # -7.094f

    const v6, -0x3d9fd1ec

    const v7, -0x3df99db2    # -33.596f

    const v8, -0x3d551168

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x43fb3000    # 502.375f

    const v4, 0x445feb54

    const v5, 0x43e94375

    const v6, 0x445c81ba

    const v7, 0x43d68ae1

    const v8, 0x445c81ba

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x442cb99a    # 690.9f

    const v3, 0x447c9862

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3f6a3d71    # -4.68f

    const/4 v4, 0x0

    const v5, -0x3f053f7d    # -7.836f

    const v6, 0x4080fdf4    # 4.031f

    const v7, -0x3ed41893    # -10.744f

    const v8, 0x40d68f5c    # 6.705f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x426c8b44    # -0.072f

    const/4 v4, 0x0

    const v5, -0x41e45a1d    # -0.152f

    const v6, -0x43fced91    # -0.008f

    const v7, -0x41978d50    # -0.227f

    const v8, -0x43dc28f6    # -0.01f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x3ced9168    # 0.029f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;F)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3d8b4396    # 0.068f

    const v4, -0x44fced91    # -0.002f

    const v5, 0x3e0e5604    # 0.139f

    const v6, -0x43dc28f6    # -0.01f

    const v7, 0x3e53f7cf    # 0.207f

    const v8, -0x43dc28f6    # -0.01f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x403bc6a8    # 2.934f

    const v4, 0x40288312    # 2.633f

    const v5, 0x40bb3333    # 5.85f

    const v6, 0x40d753f8    # 6.729f

    const v7, 0x412c3958    # 10.764f

    const v8, 0x40d75c29    # 6.73f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x4029fbe7    # 2.656f

    const/4 v4, 0x0

    const v5, 0x40d5b22d    # 6.678f

    const v6, -0x3ff8c49c    # -2.113f

    const v7, 0x40d5b22d    # 6.678f

    const v8, -0x3f28ed91    # -6.721f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x442e64fe

    const v4, 0x447d2958

    const v5, 0x442d76a8

    const v6, 0x447c9862

    const v7, 0x442cb99a    # 690.9f

    const v8, 0x447c9862

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x43d68ae1

    const v3, 0x445c81ba

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3d6c67f0

    const/4 v4, 0x0

    const v5, -0x3cf9ec08

    const v6, 0x4273c9ba

    const v7, -0x3cf9ec08

    const v8, 0x4306f687

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42929604    # 73.293f

    const v5, 0x426df6c9

    const v6, 0x4306fa1d

    const v7, 0x430633b6

    const v8, 0x4306fa1d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x421c449c

    const/4 v4, 0x0

    const v5, 0x42955893

    const v6, -0x3e98872b    # -14.467f

    const v7, 0x42cd5687

    const v8, -0x3dc5fbe7

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41c9e560    # 25.237f

    const v4, -0x3e18f7cf    # -28.879f

    const v5, 0x41fdb439    # 31.713f

    const v6, -0x3d8cb646

    const v7, 0x4202fcee

    const v8, -0x3d5c4831

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, -0x3ecb0e56    # -11.309f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;F)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x40bc6a7f    # -0.764f

    const v4, -0x3e4f8312    # -22.061f

    const v5, -0x3f1c8312    # -7.109f

    const v6, -0x3da26354    # -55.403f

    const v7, -0x3dfb53f8    # -33.168f

    const v8, -0x3d575604    # -84.332f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x43fb3000    # 502.375f

    const v4, 0x445feb54

    const v5, 0x43e94375

    const v6, 0x445c81ba

    const v7, 0x43d68ae1

    const v8, 0x445c81ba

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x442cba4e

    const v3, 0x447d1a8f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3fbda1cb    # -3.037f

    const/4 v4, 0x0

    const v5, -0x3f5e3d71    # -5.055f

    const v6, 0x3fe18937    # 1.762f

    const v7, -0x3f5e3d71    # -5.055f

    const v8, 0x4097020c    # 4.719f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x426872b0    # -0.074f

    const v4, 0x3b03126f    # 0.002f

    const v5, -0x41e24dd3    # -0.154f

    const v6, -0x443b645a    # -0.006f

    const v7, -0x41926e98    # -0.232f

    const v8, -0x43fced91    # -0.008f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x3cac0831    # 0.021f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;F)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3d9374bc    # 0.072f

    const/4 v4, 0x0

    const v5, 0x3e178d50    # 0.148f

    const v6, -0x43fced91    # -0.008f

    const v7, 0x3e604189    # 0.219f

    const v8, -0x443b645a    # -0.006f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x403a3d71    # 2.91f

    const v5, 0x3ff3f7cf    # 1.906f

    const v6, 0x40978d50    # 4.736f

    const v7, 0x40a22d0e    # 5.068f

    const v8, 0x40978d50    # 4.736f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3fef3b64    # 1.869f

    const/4 v4, 0x0

    const v5, 0x40965e35    # 4.699f

    const v6, -0x4041cac1    # -1.486f

    const v7, 0x40965e35    # 4.699f

    const v8, -0x3f68a3d7    # -4.73f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x442de70a

    const v4, 0x447d8093

    const v5, 0x442d3f4c

    const v6, 0x447d1a8f

    const v7, 0x442cba4e

    const v8, 0x447d1a8f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x43d68ae1

    const v3, 0x445c81ba

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3d6c67f0

    const/4 v4, 0x0

    const v5, -0x3cf9ec08

    const v6, 0x4273c9ba

    const v7, -0x3cf9ec08

    const v8, 0x4306f646

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x4292970a

    const v5, 0x426df6c9

    const v6, 0x4306fa5e

    const v7, 0x430633b6

    const v8, 0x4306fa5e

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x421c449c

    const/4 v4, 0x0

    const v5, 0x42955893

    const v6, -0x3e98872b    # -14.467f

    const v7, 0x42cd5687

    const v8, -0x3dc5fcee

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41c9e560    # 25.237f

    const v4, -0x3e18f3b6    # -28.881f

    const v5, 0x41fdb439    # 31.713f

    const v6, -0x3d8cb439

    const v7, 0x4202fcee

    const v8, -0x3d5c4831

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, -0x3ecb0625    # -11.311f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;F)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x40bc6a7f    # -0.764f

    const v4, -0x3e4f872b    # -22.059f

    const v5, -0x3f1c8312    # -7.109f

    const v6, -0x3da2645a    # -55.402f

    const v7, -0x3dfb53f8    # -33.168f

    const v8, -0x3d575687

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x43fb3000    # 502.375f

    const v4, 0x445feb54

    const v5, 0x43e94375

    const v6, 0x445c81ba

    const v7, 0x43d68ae1

    const v8, 0x445c81ba

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x442cba7f

    const v3, 0x447d4cbc

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3fdd1eb8    # -2.545f

    const/4 v4, 0x0

    const v5, -0x3f789375    # -4.232f

    const v6, 0x3fbdb22d    # 1.482f

    const v7, -0x3f789375    # -4.232f

    const v8, 0x407cfdf4    # 3.953f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x428624dd    # -0.061f

    const v4, 0x3b03126f    # 0.002f

    const v5, -0x41f3b646    # -0.137f

    const v6, -0x437ced91    # -0.016f

    const v7, -0x41b43958    # -0.199f

    const v8, -0x436c8b44    # -0.018f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x3d1fbe77    # 0.039f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;F)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3d71a9fc    # 0.059f

    const/4 v4, 0x0

    const v5, 0x3e041893    # 0.129f

    const v6, -0x436c8b44    # -0.018f

    const v7, 0x3e408312    # 0.188f

    const v8, -0x437ced91    # -0.016f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x401bc6a8    # 2.434f

    const v5, 0x3fcc0831    # 1.594f

    const v6, 0x407e0419    # 3.969f

    const v7, 0x4087ced9    # 4.244f

    const v8, 0x407e0419    # 3.969f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3fc8b439    # 1.568f

    const/4 v4, 0x0

    const v5, 0x407c0831    # 3.938f

    const v6, -0x40608312    # -1.246f

    const v7, 0x407c0831    # 3.938f

    const v8, -0x3f825e35    # -3.963f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x442db687

    const v4, 0x447da23d

    const v5, 0x442d29fc

    const v6, 0x447d4cbc

    const v7, 0x442cba7f

    const v8, 0x447d4cbc

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x43d68ae1

    const v3, 0x445c81ba

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3d6c67f0

    const/4 v4, 0x0

    const v5, -0x3cf9ec08

    const v6, 0x4273c9ba

    const v7, -0x3cf9ec08

    const v8, 0x4306f687

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42929604    # 73.293f

    const v5, 0x426df6c9

    const v6, 0x4306fa1d

    const v7, 0x430633b6

    const v8, 0x4306fa1d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x421c449c

    const/4 v4, 0x0

    const v5, 0x42955893

    const v6, -0x3e98872b    # -14.467f

    const v7, 0x42cd5687

    const v8, -0x3dc5fbe7

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41c9e560    # 25.237f

    const v4, -0x3e18f7cf    # -28.879f

    const v5, 0x41fdb439    # 31.713f

    const v6, -0x3d8cb646

    const v7, 0x4202fcee

    const v8, -0x3d5c4831

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, -0x3ecb0e56    # -11.309f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;F)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x40bc6a7f    # -0.764f

    const v4, -0x3e4f8312    # -22.061f

    const v5, -0x3f1c8312    # -7.109f

    const v6, -0x3da26354    # -55.403f

    const v7, -0x3dfb53f8    # -33.168f

    const v8, -0x3d575604    # -84.332f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x43fb3000    # 502.375f

    const v4, 0x445feb54

    const v5, 0x43e94375

    const v6, 0x445c81ba

    const v7, 0x43d68ae1

    const v8, 0x445c81ba

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x442cbac1

    const v3, 0x447d7c39

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3ffac083    # -2.082f

    const/4 v4, 0x0

    const v5, -0x3fa2e148    # -3.455f

    const v6, 0x3f9bc6a8    # 1.217f

    const v7, -0x3fa2e148    # -3.455f

    const v8, 0x404ea7f0    # 3.229f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x42af1aa0    # -0.051f

    const v4, 0x3b03126f    # 0.002f

    const v5, -0x42147ae1    # -0.115f

    const v6, -0x43bb645a    # -0.012f

    const v7, -0x41d1eb85    # -0.17f

    const v8, -0x439a9fbe    # -0.014f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x3cfdf3b6    # 0.031f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;F)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3d50e560    # 0.051f

    const/4 v4, 0x0

    const v5, 0x3de353f8    # 0.111f

    const v6, -0x439a9fbe    # -0.014f

    const v7, 0x3e23d70a    # 0.16f

    const v8, -0x43bb645a    # -0.012f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x3ffd4fdf    # 1.979f

    const v5, 0x3fa645a2    # 1.299f

    const v6, 0x404f5c29    # 3.24f

    const v7, 0x405dc28f    # 3.465f

    const v8, 0x404f5c29    # 3.24f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3fa3b646    # 1.279f

    const/4 v4, 0x0

    const v5, 0x404de354    # 3.217f

    const v6, -0x407db22d    # -1.018f

    const v7, 0x404de354    # 3.217f

    const v8, -0x3fb0e560    # -3.236f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x442d88a4

    const v4, 0x447dc1fc

    const v5, 0x442d15e3

    const v6, 0x447d7c39

    const v7, 0x442cbac1

    const v8, 0x447d7c39

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x43d68ae1

    const v3, 0x445c81ba

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3d6c67f0

    const/4 v4, 0x0

    const v5, -0x3cf9ec08

    const v6, 0x4273c9ba

    const v7, -0x3cf9ec08

    const v8, 0x4306f687

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42929604    # 73.293f

    const v5, 0x426df6c9

    const v6, 0x4306fa1d

    const v7, 0x430633b6

    const v8, 0x4306fa1d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x421c449c

    const/4 v4, 0x0

    const v5, 0x42955893

    const v6, -0x3e98872b    # -14.467f

    const v7, 0x42cd5687

    const v8, -0x3dc5fbe7

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41c9e560    # 25.237f

    const v4, -0x3e18f7cf    # -28.879f

    const v5, 0x41fdb439    # 31.713f

    const v6, -0x3d8cb646

    const v7, 0x4202fcee

    const v8, -0x3d5c4831

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, -0x3ecb0e56    # -11.309f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;F)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x40bc6a7f    # -0.764f

    const v4, -0x3e4f8312    # -22.061f

    const v5, -0x3f1c8312    # -7.109f

    const v6, -0x3da26354    # -55.403f

    const v7, -0x3dfb53f8    # -33.168f

    const v8, -0x3d575604    # -84.332f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x43fb3000    # 502.375f

    const v4, 0x445feb54

    const v5, 0x43e94375

    const v6, 0x445c81ba

    const v7, 0x43d68ae1

    const v8, 0x445c81ba

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x442cbb02

    const v3, 0x447da883

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x402ccccd    # -1.65f

    const/4 v4, 0x0

    const v5, -0x3fd147ae    # -2.73f

    const v6, 0x3f789375    # 0.971f

    const v7, -0x3fd147ae    # -2.73f

    const v8, 0x4023645a    # 2.553f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x42cfdf3b    # -0.043f

    const v4, 0x3b03126f    # 0.002f

    const v5, -0x423b645a    # -0.096f

    const v6, -0x43fced91    # -0.008f

    const v7, -0x41ef9db2    # -0.141f

    const v8, -0x43dc28f6    # -0.01f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x3cbc6a7f    # 0.023f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;F)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3d3020c5    # 0.043f

    const/4 v4, 0x0

    const v5, 0x3dbc6a7f    # 0.092f

    const v6, -0x43bb645a    # -0.012f

    const v7, 0x3e083127    # 0.133f

    const v8, -0x43dc28f6    # -0.01f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x3fc74bc7    # 1.557f

    const v5, 0x3f82b021    # 1.021f

    const v6, 0x40241893    # 2.564f

    const v7, 0x402f3b64    # 2.738f

    const v8, 0x40241893    # 2.564f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3f818937    # 1.012f

    const/4 v4, 0x0

    const v5, 0x4022c083    # 2.543f

    const v6, -0x40b1eb85    # -0.805f

    const v7, 0x4022c083    # 2.543f

    const v8, -0x3fdc1893    # -2.561f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x442d5dc3

    const v4, 0x447ddfbe

    const v5, 0x442d0302

    const v6, 0x447da883

    const v7, 0x442cbb02

    const v8, 0x447da883

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x43d68ae1

    const v3, 0x445c81ba

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3d6c67f0

    const/4 v4, 0x0

    const v5, -0x3cf9ec08

    const v6, 0x4273c9ba

    const v7, -0x3cf9ec08

    const v8, 0x4306f687

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42929604    # 73.293f

    const v5, 0x426df6c9

    const v6, 0x4306fa1d

    const v7, 0x430633b6

    const v8, 0x4306fa1d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x421c449c

    const/4 v4, 0x0

    const v5, 0x42955893

    const v6, -0x3e98872b    # -14.467f

    const v7, 0x42cd5687

    const v8, -0x3dc5fbe7

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41c9e560    # 25.237f

    const v4, -0x3e18f7cf    # -28.879f

    const v5, 0x41fdb439    # 31.713f

    const v6, -0x3d8cb646

    const v7, 0x4202fcee

    const v8, -0x3d5c4831

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, -0x3ecb0e56    # -11.309f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;F)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x40bc6a7f    # -0.764f

    const v4, -0x3e4f8312    # -22.061f

    const v5, -0x3f1c8312    # -7.109f

    const v6, -0x3da26354    # -55.403f

    const v7, -0x3dfb53f8    # -33.168f

    const v8, -0x3d575604    # -84.332f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x43fb3000    # 502.375f

    const v4, 0x445feb54

    const v5, 0x43e94375

    const v6, 0x445c81ba

    const v7, 0x43d68ae1

    const v8, 0x445c81ba

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x442cbb44

    const v3, 0x447dd0c5

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x405ef9db    # -1.258f

    const/4 v4, 0x0

    const v5, -0x3ffb645a    # -2.072f

    const v6, 0x3f3ef9db    # 0.746f

    const v7, -0x3ffb645a    # -2.072f

    const v8, 0x3ff83127    # 1.939f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x42f0a3d7    # -0.035f

    const v4, 0x3b03126f    # 0.002f

    const v5, -0x42604189    # -0.078f

    const v6, -0x443b645a    # -0.006f

    const v7, -0x42147ae1    # -0.115f

    const v8, -0x443b645a    # -0.006f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x3c83126f    # 0.016f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;F)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3d0f5c29    # 0.035f

    const/4 v4, 0x0

    const v5, 0x3d9ba5e3    # 0.076f

    const v6, -0x43fced91    # -0.008f

    const v7, 0x3ddf3b64    # 0.109f

    const v8, -0x443b645a    # -0.006f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x3f95c28f    # 1.17f

    const v5, 0x3f456042    # 0.771f

    const v6, 0x3ff8f5c3    # 1.945f

    const v7, 0x4004fdf4    # 2.078f

    const v8, 0x3ff8f5c3    # 1.945f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3f449ba6    # 0.768f

    const/4 v4, 0x0

    const v5, 0x3ff70a3d    # 1.93f

    const v6, -0x40e39581    # -0.611f

    const v7, 0x3ff70a3d    # 1.93f

    const v8, -0x40074bc7    # -1.943f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x442d36b8

    const v4, 0x447dfac1

    const v5, 0x442cf1db

    const v6, 0x447dd0c5

    const v7, 0x442cbb44

    const v8, 0x447dd0c5

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x43d68ae1

    const v3, 0x445c81ba

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3d6c67f0

    const/4 v4, 0x0

    const v5, -0x3cf9ec08

    const v6, 0x4273c9ba

    const v7, -0x3cf9ec08

    const v8, 0x4306f687

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42929604    # 73.293f

    const v5, 0x426df6c9

    const v6, 0x4306fa1d

    const v7, 0x430633b6

    const v8, 0x4306fa1d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x421c449c

    const/4 v4, 0x0

    const v5, 0x42955893

    const v6, -0x3e98872b    # -14.467f

    const v7, 0x42cd5687

    const v8, -0x3dc5fbe7

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41c9e560    # 25.237f

    const v4, -0x3e18f7cf    # -28.879f

    const v5, 0x41fdb439    # 31.713f

    const v6, -0x3d8cb646

    const v7, 0x4202fcee

    const v8, -0x3d5c4831

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, -0x3ecb0e56    # -11.309f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;F)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x40bc6a7f    # -0.764f

    const v4, -0x3e4f8312    # -22.061f

    const v5, -0x3f1c8312    # -7.109f

    const v6, -0x3da26354    # -55.403f

    const v7, -0x3dfb53f8    # -33.168f

    const v8, -0x3d575604    # -84.332f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x43fb3000    # 502.375f

    const v4, 0x445feb54

    const v5, 0x43e94375

    const v6, 0x445c81ba

    const v7, 0x43d68ae1

    const v8, 0x445c81ba

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x442cbb64

    const v3, 0x447df439

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x40970a3d    # -0.91f

    const/4 v4, 0x0

    const v5, -0x404147ae    # -1.49f

    const v6, 0x3f0c8b44    # 0.549f

    const v7, -0x404147ae    # -1.49f

    const v8, 0x3fb2f1aa    # 1.398f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x4322d0e5    # -0.027f

    const v4, 0x3b03126f    # 0.002f

    const v5, -0x427ef9db    # -0.063f

    const v6, -0x447ced91    # -0.004f

    const v7, -0x423f7cee    # -0.094f

    const v8, -0x447ced91    # -0.004f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x3c03126f    # 0.008f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;F)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3ced9168    # 0.029f

    const/4 v4, 0x0

    const v5, 0x3d810625    # 0.063f

    const v6, -0x443b645a    # -0.006f

    const v7, 0x3db851ec    # 0.09f

    const v8, -0x44fced91    # -0.002f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x3f54fdf4    # 0.832f

    const v5, 0x3f0c8b44    # 0.549f

    const v6, 0x3fb374bc    # 1.402f

    const v7, 0x3fbf3b64    # 1.494f

    const v8, 0x3fb374bc    # 1.402f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3f0e147b    # 0.555f

    const/4 v4, 0x0

    const v5, 0x3fb24dd3    # 1.393f

    const v6, -0x411f3b64    # -0.439f

    const v7, 0x3fb24dd3    # 1.393f

    const v8, -0x404ccccd    # -1.4f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x442d147b    # 692.32f

    const v4, 0x447e127f

    const v5, 0x442ce2c1

    const v6, 0x447df439

    const v7, 0x442cbb64

    const v8, 0x447df439

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x43d68ae1

    const v3, 0x445c81ba

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3d6c67f0

    const/4 v4, 0x0

    const v5, -0x3cf9ec08

    const v6, 0x4273c9ba

    const v7, -0x3cf9ec08

    const v8, 0x4306f687

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42929604    # 73.293f

    const v5, 0x426df6c9

    const v6, 0x4306fa1d

    const v7, 0x430633b6

    const v8, 0x4306fa1d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x421c449c

    const/4 v4, 0x0

    const v5, 0x42955893

    const v6, -0x3e98872b    # -14.467f

    const v7, 0x42cd5687

    const v8, -0x3dc5fbe7

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41c9e560    # 25.237f

    const v4, -0x3e18f7cf    # -28.879f

    const v5, 0x41fdb439    # 31.713f

    const v6, -0x3d8cb646

    const v7, 0x4202fcee

    const v8, -0x3d5c4831

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, -0x3ecb0e56    # -11.309f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;F)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x40bc6a7f    # -0.764f

    const v4, -0x3e4f8312    # -22.061f

    const v5, -0x3f1c8312    # -7.109f

    const v6, -0x3da26354    # -55.403f

    const v7, -0x3dfb53f8    # -33.168f

    const v8, -0x3d575604    # -84.332f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x43fb3000    # 502.375f

    const v4, 0x445feb54

    const v5, 0x43e94375

    const v6, 0x445c81ba

    const v7, 0x43d68ae1

    const v8, 0x445c81ba

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x442c7687

    const v3, 0x447e4e77

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3c656042    # 0.014f

    const/4 v4, 0x0

    const v5, 0x3cdd2f1b    # 0.027f

    const v6, 0x3b03126f    # 0.002f

    const v7, 0x3d27ef9e    # 0.041f

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x442c7842

    const v4, 0x447e4e56    # 1017.224f

    const v5, 0x442c775c

    const v6, 0x447e4e77

    const v7, 0x442c7687

    const v8, 0x447e4e77

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->L:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x442c7687

    const v3, 0x447e4e77

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x442cbb85    # 690.93f

    const v3, 0x447e11ec

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x40e18937    # -0.619f

    const/4 v4, 0x0

    const v5, -0x407f7cee    # -1.004f

    const v6, 0x3ec41893    # 0.383f

    const v7, -0x407f7cee    # -1.004f

    const v8, 0x3f71eb85    # 0.945f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x43dc28f6    # -0.01f

    const v4, 0x3b03126f    # 0.002f

    const v5, -0x43439581    # -0.023f

    const v6, -0x44fced91    # -0.002f

    const v7, -0x42f8d4fe    # -0.033f

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3c03126f    # 0.008f

    const v4, 0x3b03126f    # 0.002f

    const v5, 0x3cac0831    # 0.021f

    const v6, -0x44fced91    # -0.002f

    const v7, 0x3ced9168    # 0.029f

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x3f0d0e56    # 0.551f

    const v5, 0x3ebae148    # 0.365f

    const v6, 0x3f72f1aa    # 0.949f

    const v7, 0x3f810625    # 1.008f

    const v8, 0x3f72f1aa    # 0.949f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/high16 v3, 0x3ec00000    # 0.375f

    const/4 v4, 0x0

    const v5, 0x3f70e560    # 0.941f

    const v6, -0x4167ef9e    # -0.297f

    const v7, 0x3f70e560    # 0.941f

    const v8, -0x408d9168    # -0.947f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x442cf7be

    const v4, 0x447e2656    # 1016.599f

    const v5, 0x442cd646

    const v6, 0x447e11ec

    const v7, 0x442cbb85    # 690.93f

    const v8, 0x447e11ec

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x43d68ae1

    const v3, 0x445c81ba

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3d6c67f0

    const/4 v4, 0x0

    const v5, -0x3cf9ec08

    const v6, 0x4273c9ba

    const v7, -0x3cf9ec08

    const v8, 0x4306f646

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x4292970a

    const v5, 0x426df6c9

    const v6, 0x4306fa1d

    const v7, 0x430633b6

    const v8, 0x4306fa1d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x421c449c

    const/4 v4, 0x0

    const v5, 0x42955893

    const v6, -0x3e988f5c    # -14.465f

    const v7, 0x42cd5687

    const v8, -0x3dc5fdf4

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41c9e560    # 25.237f

    const v4, -0x3e18f3b6    # -28.881f

    const v5, 0x41fdb439    # 31.713f

    const v6, -0x3d8cb439

    const v7, 0x4202fcee

    const v8, -0x3d5c4831

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, -0x3ecb0625    # -11.311f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;F)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x40bc6a7f    # -0.764f

    const v4, -0x3e4f872b    # -22.059f

    const v5, -0x3f1c8312    # -7.109f

    const v6, -0x3da2645a    # -55.402f

    const v7, -0x3dfb53f8    # -33.168f

    const v8, -0x3d575687

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x43fb3000    # 502.375f

    const v4, 0x445feb54

    const v5, 0x43e94375

    const v6, 0x445c81ba

    const v7, 0x43d68ae1

    const v8, 0x445c81ba

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x442cbba6

    const v3, 0x447e2906

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x4135c28f    # -0.395f

    const/4 v4, 0x0

    const v5, -0x40df7cee    # -0.627f

    const v6, 0x3e820c4a    # 0.254f

    const v7, -0x40df7cee    # -0.627f

    const v8, 0x3f181062    # 0.594f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x437ced91    # -0.016f

    const v4, 0x3b83126f    # 0.004f

    const v5, -0x42cfdf3b    # -0.043f

    const v6, -0x443b645a    # -0.006f

    const v7, -0x428624dd    # -0.061f

    const v8, -0x447ced91    # -0.004f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x3bc49ba6    # 0.006f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;F)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3c9374bc    # 0.018f

    const v4, 0x3b83126f    # 0.004f

    const v5, 0x3d3020c5    # 0.043f

    const v6, -0x443b645a    # -0.006f

    const v7, 0x3d71a9fc    # 0.059f

    const v8, -0x44fced91    # -0.002f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x3ea8f5c3    # 0.33f

    const v5, 0x3e624dd3    # 0.221f

    const v6, 0x3f189375    # 0.596f

    const v7, 0x3f210625    # 0.629f

    const v8, 0x3f189375    # 0.596f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x3e71a9fc    # 0.236f

    const/4 v4, 0x0

    const v5, 0x3f178d50    # 0.592f

    const v6, -0x41c18937    # -0.186f

    const v7, 0x3f178d50    # 0.592f

    const v8, -0x40e76c8b    # -0.596f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x442ce179

    const v4, 0x447e35c3

    const v5, 0x442ccc5a

    const v6, 0x447e2906

    const v7, 0x442cbba6

    const v8, 0x447e2906

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x43d68ae1

    const v3, 0x445c81ba

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3d6c67f0

    const/4 v4, 0x0

    const v5, -0x3cf9ec08

    const v6, 0x4273c9ba

    const v7, -0x3cf9ec08

    const v8, 0x4306f687

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42929604    # 73.293f

    const v5, 0x426df6c9

    const v6, 0x4306fa1d

    const v7, 0x430633b6

    const v8, 0x4306fa1d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x421c449c

    const/4 v4, 0x0

    const v5, 0x42955893

    const v6, -0x3e98872b    # -14.467f

    const v7, 0x42cd5687

    const v8, -0x3dc5fbe7

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41c9e560    # 25.237f

    const v4, -0x3e18f7cf    # -28.879f

    const v5, 0x41fdb439    # 31.713f

    const v6, -0x3d8cb646

    const v7, 0x4202fcee

    const v8, -0x3d5c4831

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, -0x3ecb0e56    # -11.309f

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;F)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x40bc6a7f    # -0.764f

    const v4, -0x3e4f8312    # -22.061f

    const v5, -0x3f1c8312    # -7.109f

    const v6, -0x3da26354    # -55.403f

    const v7, -0x3dfb53f8    # -33.168f

    const v8, -0x3d575581    # -84.333f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->C:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x43fb3000    # 502.375f

    const v4, 0x445feb54

    const v5, 0x43e94375

    const v6, 0x445c81ba

    const v7, 0x43d68ae1

    const v8, 0x445c81ba

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x440d2800    # 564.625f

    const v3, 0x447d12e1

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x40bc6a7f    # -0.764f

    const v4, -0x3e4f8312    # -22.061f

    const v5, -0x3f1c8312    # -7.109f

    const v6, -0x3da26354    # -55.403f

    const v7, -0x3dfb53f8    # -33.168f

    const v8, -0x3d575604    # -84.332f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e175810    # -29.082f

    const v4, -0x3dfedb23    # -32.286f

    const v5, -0x3d7e23d7    # -64.93f

    const v6, -0x3dc84189    # -45.936f

    const v7, -0x3d33420c

    const v8, -0x3dc84189    # -45.936f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3d6c67f0

    const/4 v4, 0x0

    const v5, -0x3cf9ec08

    const v6, 0x4273c9ba

    const v7, -0x3cf9ec08

    const v8, 0x4306f687

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42929604    # 73.293f

    const v5, 0x426df6c9

    const v6, 0x4306fa1d

    const v7, 0x430633b6

    const v8, 0x4306fa1d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x421c449c

    const/4 v4, 0x0

    const v5, 0x42955893

    const v6, -0x3e98872b    # -14.467f

    const v7, 0x42cd5687

    const v8, -0x3dc5fbe7

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41c9e560    # 25.237f

    const v4, -0x3e18f7cf    # -28.879f

    const v5, 0x41fdb439    # 31.713f

    const v6, -0x3d8cb646

    const v7, 0x4202fcee

    const v8, -0x3d5c4831

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->V:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x447d12e1

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;F)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x440d2800    # 564.625f

    const v3, 0x447d12e1

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x40bc6a7f    # -0.764f

    const v4, -0x3e4f8312    # -22.061f

    const v5, -0x3f1c8312    # -7.109f

    const v6, -0x3da2645a    # -55.402f

    const v7, -0x3dfb53f8    # -33.168f

    const v8, -0x3d575604    # -84.332f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e175810    # -29.082f

    const v4, -0x3dfedb23    # -32.286f

    const v5, -0x3d7e23d7    # -64.93f

    const v6, -0x3dc84189    # -45.936f

    const v7, -0x3d33420c

    const v8, -0x3dc84189    # -45.936f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3d6c67f0

    const/4 v4, 0x0

    const v5, -0x3cf9ec08

    const v6, 0x4273c9ba

    const v7, -0x3cf9ec08

    const v8, 0x4306f687

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42929604    # 73.293f

    const v5, 0x426df5c3    # 59.49f

    const v6, 0x4306fa1d

    const v7, 0x43063375

    const v8, 0x4306fa1d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x421c45a2    # 39.068f

    const/4 v4, 0x0

    const v5, 0x42955917

    const v6, -0x3e98872b    # -14.467f

    const v7, 0x42cd570a    # 102.67f

    const v8, -0x3dc5fbe7

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41c9e560    # 25.237f

    const v4, -0x3e18f7cf    # -28.879f

    const v5, 0x41fdb439    # 31.713f

    const v6, -0x3d8cb646

    const v7, 0x4202fcee

    const v8, -0x3d5c4831

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->V:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x447d12e1

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;F)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->M:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x440d2800    # 564.625f

    const v3, 0x447d12e1

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x40bc6a7f    # -0.764f

    const v4, -0x3e4f8312    # -22.061f

    const v5, -0x3f1c8312    # -7.109f

    const v6, -0x3da26354    # -55.403f

    const v7, -0x3dfb53f8    # -33.168f

    const v8, -0x3d575604    # -84.332f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3e175810    # -29.082f

    const v4, -0x3dfedb23    # -32.286f

    const v5, -0x3d7e23d7    # -64.93f

    const v6, -0x3dc84189    # -45.936f

    const v7, -0x3d33420c

    const v8, -0x3dc84189    # -45.936f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, -0x3d6c67f0

    const/4 v4, 0x0

    const v5, -0x3cf9ec08

    const v6, 0x4273c9ba

    const v7, -0x3cf9ec08

    const v8, 0x4306f687

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const/4 v3, 0x0

    const v4, 0x42929604    # 73.293f

    const v5, 0x426df6c9

    const v6, 0x4306fa1d

    const v7, 0x430633b6

    const v8, 0x4306fa1d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x421c449c

    const/4 v4, 0x0

    const v5, 0x42955893

    const v6, -0x3e98872b    # -14.467f

    const v7, 0x42cd5687

    const v8, -0x3dc5fbe7

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v3, 0x41c9e560    # 25.237f

    const v4, -0x3e18f7cf    # -28.879f

    const v5, 0x41fdb439    # 31.713f

    const v6, -0x3d8cb646

    const v7, 0x4202fcee

    const v8, -0x3d5c4831

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->V:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    const v2, 0x447d12e1

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;F)V

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->z:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aput-object v1, v0, v9

    return-void
.end method

.method private vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;)V
    .locals 9

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    move v8, v3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    return-void
.end method

.method private vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;F)V
    .locals 9

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$1;->$SwitchMap$com$samsung$android$visualeffect$dropmorphing$path$DropMorphingPath$SVGCommand:[I

    invoke-virtual {p2}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    goto :goto_0

    :pswitch_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FF)V
    .locals 9

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, v5

    move v7, v5

    move v8, v5

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    return-void
.end method

.method private vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFF)V
    .locals 9

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V

    return-void
.end method

.method private vectorParsing(Landroid/graphics/Path;Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;FFFFFF)V
    .locals 11

    const/4 v7, 0x0

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$1;->$SwitchMap$com$samsung$android$visualeffect$dropmorphing$path$DropMorphingPath$SVGCommand:[I

    invoke-virtual {p2}, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->ordinal()I

    move-result v10

    aget v0, v0, v10

    packed-switch v0, :pswitch_data_0

    :goto_0
    if-nez v7, :cond_0

    iget v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->lastX:F

    iput v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->lastX1:F

    iget v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->lastY:F

    iput v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->lastY1:F

    :cond_0
    return-void

    :pswitch_0
    move v8, p3

    move v9, p4

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->m:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    if-ne p2, v0, :cond_1

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Path;->rMoveTo(FF)V

    iget v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->lastX:F

    add-float/2addr v0, v8

    iput v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->lastX:F

    iget v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->lastY:F

    add-float/2addr v0, v9

    iput v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->lastY:F

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    iput v8, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->lastX:F

    iput v9, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->lastY:F

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->lastX1:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->lastY1:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->lastX:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->lastY:F

    goto :goto_0

    :pswitch_2
    move v8, p3

    move v9, p4

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->l:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    if-ne p2, v0, :cond_2

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Path;->rLineTo(FF)V

    iget v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->lastX:F

    add-float/2addr v0, v8

    iput v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->lastX:F

    iget v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->lastY:F

    add-float/2addr v0, v9

    iput v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->lastY:F

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    iput v8, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->lastX:F

    iput v9, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->lastY:F

    goto :goto_0

    :pswitch_3
    move v8, p3

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->h:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    if-ne p2, v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p1, v8, v0}, Landroid/graphics/Path;->rLineTo(FF)V

    iget v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->lastX:F

    add-float/2addr v0, v8

    iput v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->lastX:F

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->lastY:F

    invoke-virtual {p1, v8, v0}, Landroid/graphics/Path;->lineTo(FF)V

    iput v8, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->lastX:F

    goto :goto_0

    :pswitch_4
    move v9, p4

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->v:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    if-ne p2, v0, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v9}, Landroid/graphics/Path;->rLineTo(FF)V

    iget v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->lastY:F

    add-float/2addr v0, v9

    iput v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->lastY:F

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->lastX:F

    invoke-virtual {p1, v0, v9}, Landroid/graphics/Path;->lineTo(FF)V

    iput v9, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->lastY:F

    goto :goto_0

    :pswitch_5
    const/4 v7, 0x1

    move v1, p3

    move v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->c:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    if-ne p2, v0, :cond_5

    iget v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->lastX:F

    add-float/2addr v1, v0

    iget v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->lastX:F

    add-float/2addr v3, v0

    iget v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->lastX:F

    add-float/2addr v5, v0

    iget v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->lastY:F

    add-float/2addr v2, v0

    iget v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->lastY:F

    add-float/2addr v4, v0

    iget v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->lastY:F

    add-float/2addr v6, v0

    :cond_5
    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iput v3, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->lastX1:F

    iput v4, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->lastY1:F

    iput v5, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->lastX:F

    iput v6, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->lastY:F

    goto/16 :goto_0

    :pswitch_6
    const/4 v7, 0x1

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    sget-object v0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;->s:Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath$SVGCommand;

    if-ne p2, v0, :cond_6

    iget v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->lastX:F

    add-float/2addr v3, v0

    iget v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->lastX:F

    add-float/2addr v5, v0

    iget v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->lastY:F

    add-float/2addr v4, v0

    iget v0, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->lastY:F

    add-float/2addr v6, v0

    :cond_6
    const/high16 v0, 0x40000000    # 2.0f

    iget v10, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->lastX:F

    mul-float/2addr v0, v10

    iget v10, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->lastX1:F

    sub-float v1, v0, v10

    const/high16 v0, 0x40000000    # 2.0f

    iget v10, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->lastY:F

    mul-float/2addr v0, v10

    iget v10, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->lastY1:F

    sub-float v2, v0, v10

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iput v3, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->lastX1:F

    iput v4, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->lastY1:F

    iput v5, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->lastX:F

    iput v6, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->lastY:F

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public getPath(I)Landroid/graphics/Path;
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/visualeffect/dropmorphing/path/DropMorphingPath;->path:[Landroid/graphics/Path;

    aget-object v0, v1, p1

    return-object v0
.end method

.method public getPathTotal()I
    .locals 1

    const/16 v0, 0x3c

    return v0
.end method
