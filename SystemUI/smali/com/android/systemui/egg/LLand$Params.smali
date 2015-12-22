.class Lcom/android/systemui/egg/LLand$Params;
.super Ljava/lang/Object;
.source "LLand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/egg/LLand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Params"
.end annotation


# instance fields
.field public BOOST_DV:I

.field public BUILDING_HEIGHT_MIN:I

.field public BUILDING_WIDTH_MAX:I

.field public BUILDING_WIDTH_MIN:I

.field public CLOUD_SIZE_MAX:I

.field public CLOUD_SIZE_MIN:I

.field public G:I

.field public HUD_Z:F

.field public MAX_V:I

.field public OBSTACLE_GAP:I

.field public OBSTACLE_MIN:I

.field public OBSTACLE_PERIOD:I

.field public OBSTACLE_SPACING:I

.field public OBSTACLE_STEM_WIDTH:I

.field public OBSTACLE_WIDTH:I

.field public OBSTACLE_Z:F

.field public PLAYER_HIT_SIZE:I

.field public PLAYER_SIZE:I

.field public PLAYER_Z:F

.field public PLAYER_Z_BOOST:F

.field public SCENERY_Z:F

.field public STAR_SIZE_MAX:I

.field public STAR_SIZE_MIN:I

.field public TRANSLATION_PER_SEC:F


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0c050f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/LLand$Params;->TRANSLATION_PER_SEC:F

    const v0, 0x7f0c050e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_SPACING:I

    iget v0, p0, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_SPACING:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/egg/LLand$Params;->TRANSLATION_PER_SEC:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_PERIOD:I

    const v0, 0x7f0c0510

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/LLand$Params;->BOOST_DV:I

    const v0, 0x7f0c0511

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/LLand$Params;->PLAYER_HIT_SIZE:I

    const v0, 0x7f0c0512

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/LLand$Params;->PLAYER_SIZE:I

    const v0, 0x7f0c0513

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_WIDTH:I

    const v0, 0x7f0c0514

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_STEM_WIDTH:I

    const v0, 0x7f0c0515

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_GAP:I

    const v0, 0x7f0c0516

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_MIN:I

    const v0, 0x7f0c0519

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/LLand$Params;->BUILDING_HEIGHT_MIN:I

    const v0, 0x7f0c0517

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/LLand$Params;->BUILDING_WIDTH_MIN:I

    const v0, 0x7f0c0518

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/LLand$Params;->BUILDING_WIDTH_MAX:I

    const v0, 0x7f0c051a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/LLand$Params;->CLOUD_SIZE_MIN:I

    const v0, 0x7f0c051b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/LLand$Params;->CLOUD_SIZE_MAX:I

    const v0, 0x7f0c051e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/LLand$Params;->STAR_SIZE_MIN:I

    const v0, 0x7f0c051f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/LLand$Params;->STAR_SIZE_MAX:I

    const v0, 0x7f0c0520

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/LLand$Params;->G:I

    const v0, 0x7f0c0521

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/LLand$Params;->MAX_V:I

    const v0, 0x7f0c0522

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/egg/LLand$Params;->SCENERY_Z:F

    const v0, 0x7f0c0523

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_Z:F

    const v0, 0x7f0c0524

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/egg/LLand$Params;->PLAYER_Z:F

    const v0, 0x7f0c0525

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/egg/LLand$Params;->PLAYER_Z_BOOST:F

    const v0, 0x7f0c0526

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/egg/LLand$Params;->HUD_Z:F

    iget v0, p0, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_MIN:I

    iget v1, p0, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    if-gt v0, v1, :cond_0

    const-string v0, "LLand"

    const-string v1, "error: obstacles might be too short, adjusting"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/egg/LLand$Params;->OBSTACLE_MIN:I

    :cond_0
    return-void
.end method
