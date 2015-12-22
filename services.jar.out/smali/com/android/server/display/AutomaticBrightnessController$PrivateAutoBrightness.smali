.class Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrivateAutoBrightness"
.end annotation


# instance fields
.field private final BASIS_LUX:F

.field private final HBM_LUX:F

.field private mOffsetList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

.field private mOp10000Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

.field private mOp2Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

.field final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->BASIS_LUX:F

    const v0, 0x453b8000    # 3000.0f

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->HBM_LUX:F

    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->init()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addSubOffsetPointsIfNeededLocked()V
    .locals 15

    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->removeAllSubOffsetPointsLocked()V

    iget-object v11, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;
    invoke-static {v11}, Lcom/android/server/display/AutomaticBrightnessController;->access$2800(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    move-result-object v11

    iget-object v1, v11, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevels:[I

    const/4 v7, 0x0

    iget-object v11, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;
    invoke-static {v11}, Lcom/android/server/display/AutomaticBrightnessController;->access$2800(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    move-result-object v11

    iget-object v0, v11, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValues:[I

    const/4 v2, 0x0

    :goto_0
    array-length v11, v0

    if-ge v2, v11, :cond_0

    aget v11, v0, v2

    const/16 v12, 0xff

    if-lt v11, v12, :cond_3

    move v7, v2

    :cond_0
    const/16 v5, 0xff

    const/4 v10, -0x1

    const/4 v9, -0x1

    aget v3, v1, v7

    :goto_1
    if-ltz v3, :cond_5

    iget-object v11, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;
    invoke-static {v11}, Lcom/android/server/display/AutomaticBrightnessController;->access$2800(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    move-result-object v11

    int-to-float v12, v3

    invoke-virtual {v11, v12}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getDynamicAutoBrightnessValue(F)F

    move-result v11

    int-to-float v12, v3

    invoke-virtual {p0, v12}, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->getOffset(F)F

    move-result v12

    add-float/2addr v11, v12

    float-to-int v6, v11

    if-gt v6, v5, :cond_4

    const/4 v10, -0x1

    :goto_2
    if-eq v9, v10, :cond_1

    move v9, v10

    int-to-float v11, v3

    invoke-direct {p0, v11}, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->getIndex(F)I

    move-result v4

    iget-object v11, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v11, v11, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    int-to-float v12, v3

    cmpl-float v11, v11, v12

    if-lez v11, :cond_1

    add-int/lit8 v11, v5, -0x1

    if-gt v6, v11, :cond_1

    new-instance v8, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget-object v11, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    int-to-float v12, v3

    add-int/lit8 v13, v3, 0x1

    int-to-float v13, v13

    invoke-virtual {p0, v13}, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->getOffset(F)F

    move-result v13

    const/4 v14, 0x2

    invoke-direct {v8, v11, v12, v13, v14}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;-><init>(Lcom/android/server/display/AutomaticBrightnessController;FFI)V

    iget-object v11, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v11, v4, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v11, "AutomaticBrightnessController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[PAB] add(Sub) : ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v8, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    float-to-int v13, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v8, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "+"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v8, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v11, -0x1

    if-ne v10, v11, :cond_2

    if-le v5, v6, :cond_2

    move v5, v6

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v10, 0x1

    goto :goto_2

    :cond_5
    iget-object v11, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/16 v12, 0x1e

    if-le v11, v12, :cond_6

    const-string v11, "AutomaticBrightnessController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[PAB] [CHECK POINT] : Too Many Sub Points. size = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->removeAllSubOffsetPointsLocked()V

    :cond_6
    return-void
.end method

.method private addToListAfterBoundaryCheckLocked(FIF)I
    .locals 9

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    const/4 v8, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->getIndex(F)I

    move-result v0

    cmpl-float v4, p1, v6

    if-ltz v4, :cond_0

    cmpg-float v4, p1, v7

    if-gtz v4, :cond_0

    int-to-float v4, p2

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;
    invoke-static {v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$2800(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getDynamicAutoBrightnessValue(F)F

    move-result v5

    sub-float p3, v4, v5

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iput p3, v4, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[PAB] change(Fix) : [0]0-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float v4, p2

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;
    invoke-static {v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$2800(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getDynamicAutoBrightnessValue(F)F

    move-result v5

    sub-float p3, v4, v5

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOp2Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iput p3, v4, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[PAB] change(Fix) : [1]2-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v4, v4, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    cmpl-float v4, v4, p1

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iput p3, v4, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[PAB] change : ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    float-to-int v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {v2, v4, p1, p3, v8}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;-><init>(Lcom/android/server/display/AutomaticBrightnessController;FFI)V

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v4, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLowBoundary:F

    iget v5, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    iget v4, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffsetType:I

    if-ne v4, v8, :cond_2

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[PAB] remove(User) : ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v4, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mHighBoundary:F

    iget v5, v1, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    iget v4, v1, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffsetType:I

    if-ne v4, v8, :cond_3

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[PAB] remove(User) : ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    iget v7, v1, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[PAB] add(User) : ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    float-to-int v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getIndex(F)I
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mLockPAB:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/display/AutomaticBrightnessController;->access$000(Lcom/android/server/display/AutomaticBrightnessController;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v2, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    cmpl-float v2, v2, p1

    if-ltz v2, :cond_2

    :cond_0
    if-le v0, v1, :cond_1

    move v0, v1

    :cond_1
    monitor-exit v3

    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getSlope(FFFF)F
    .locals 6

    const/4 v2, 0x0

    const/4 v0, 0x0

    cmpl-float v1, p1, p3

    if-eqz v1, :cond_2

    cmpl-float v1, p2, p4

    if-eqz v1, :cond_2

    cmpl-float v1, p1, v2

    if-nez v1, :cond_0

    const p1, 0x3c23d70a    # 0.01f

    :cond_0
    cmpl-float v1, p3, v2

    if-nez v1, :cond_1

    const p3, 0x3c23d70a    # 0.01f

    :cond_1
    sub-float v1, p4, p2

    float-to-double v2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float v2, v2

    div-float v0, v1, v2

    :cond_2
    return v0
.end method

.method private getStringForOffsetList()Ljava/lang/String;
    .locals 6

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mLockPAB:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->access$000(Lcom/android/server/display/AutomaticBrightnessController;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, ""

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v3, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffsetType:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v3, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    float-to-int v3, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v3, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "+"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v3, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "   "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v4

    return-object v2

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private init()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mLockPAB:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$000(Lcom/android/server/display/AutomaticBrightnessController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;-><init>(Lcom/android/server/display/AutomaticBrightnessController;FFI)V

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    new-instance v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;-><init>(Lcom/android/server/display/AutomaticBrightnessController;FFI)V

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOp2Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    new-instance v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const v3, 0x461c4000    # 10000.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;-><init>(Lcom/android/server/display/AutomaticBrightnessController;FFI)V

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOp10000Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOp2Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOp10000Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private printOffsetList()V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->getStringForOffsetList()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutomaticBrightnessController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PAB] Offset List : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private refreshFixedOffsetPointsLocked(I)V
    .locals 7

    const/4 v3, 0x3

    const/high16 v6, 0x41f00000    # 30.0f

    const/4 v5, 0x0

    if-gez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->resetPrivateAutoBrightness()V

    const-string v2, "AutomaticBrightnessController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PAB] [CHECK POINT] ERROR. index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOp2Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v3, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    iput v3, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOp2Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v2, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    cmpl-float v2, v2, v5

    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOp10000Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iput v5, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOp2Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v2, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    cmpg-float v2, v2, v5

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOp10000Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOp2Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v3, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    iput v3, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v3, :cond_a

    if-eqz p1, :cond_4

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v2, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    cmpg-float v2, v2, v6

    if-gtz v2, :cond_6

    iget v2, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOp2Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v3, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    iput v3, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOp2Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v3, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    iput v3, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v2, v1, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    cmpg-float v2, v2, v6

    if-gtz v2, :cond_8

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOp10000Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iput v5, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOp2Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iput v5, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iput v5, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    goto :goto_1

    :cond_6
    iget v2, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    iget v3, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOp2Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v3, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_7

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOp2Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v3, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    iget v4, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOp2Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v4, v4, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOp2Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v3, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    iput v3, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOp2Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iput v5, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iput v5, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    goto :goto_1

    :cond_8
    iget v2, v1, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    cmpl-float v2, v2, v5

    if-ltz v2, :cond_9

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOp10000Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iput v5, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOp10000Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v3, v1, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    iput v3, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    goto/16 :goto_0

    :cond_a
    const-string v2, "AutomaticBrightnessController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PAB] [CHECK POINT] Fixed points are missing. size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->resetPrivateAutoBrightness()V

    goto/16 :goto_0
.end method

.method private removeAllReverseUserOffsetPointsLocked(I)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-gez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->resetPrivateAutoBrightness()V

    const-string v5, "AutomaticBrightnessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PAB] [CHECK POINT] ERROR. index = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v5, v4, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    iget v6, v4, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    add-float v3, v5, v6

    if-lez p1, :cond_6

    add-int/lit8 v0, p1, -0x1

    :goto_0
    if-ltz v0, :cond_6

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v5, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    iget v6, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    add-float v1, v5, v6

    cmpl-float v5, v1, v3

    if-lez v5, :cond_2

    iget v5, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffsetType:I

    if-ne v5, v9, :cond_3

    const-string v5, "AutomaticBrightnessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PAB] remove(User) : ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    float-to-int v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    iget v5, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffsetType:I

    if-nez v5, :cond_5

    iget v5, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    cmpg-float v5, v5, v3

    if-gtz v5, :cond_4

    iput v8, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    goto :goto_1

    :cond_4
    iget v5, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    sub-float/2addr v5, v3

    iput v5, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    goto :goto_1

    :cond_5
    const-string v5, "AutomaticBrightnessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PAB] remove(Sub) : ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    float-to-int v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    :goto_2
    if-le v0, p1, :cond_0

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v5, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    iget v6, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    add-float v1, v5, v6

    cmpg-float v5, v1, v3

    if-gez v5, :cond_7

    iget v5, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffsetType:I

    if-ne v5, v9, :cond_8

    const-string v5, "AutomaticBrightnessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PAB] remove(User) : ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    float-to-int v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_7
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_8
    iget v5, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffsetType:I

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v0, v5, :cond_9

    iput v8, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    goto :goto_3

    :cond_9
    const-string v5, "AutomaticBrightnessController"

    const-string v6, "[PAB] ERROR."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_a
    const-string v5, "AutomaticBrightnessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PAB] remove(Sub) : ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    float-to-int v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3
.end method

.method private removeAllSubOffsetPointsLocked()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v1, v1, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffsetType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addPoint(FI)V
    .locals 6

    const/4 v3, 0x0

    cmpg-float v3, p1, v3

    if-gez v3, :cond_0

    const-string v3, "AutomaticBrightnessController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[PAB] ERROR: addPoint : lux = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const v3, 0x453b7000    # 2999.0f

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_1

    const p1, 0x453b7000    # 2999.0f

    :cond_1
    if-gez p2, :cond_3

    const/4 p2, 0x0

    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;
    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->access$2800(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getDynamicAutoBrightnessValue(F)F

    move-result v2

    int-to-float v3, p2

    sub-float v1, v3, v2

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mLockPAB:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->access$000(Lcom/android/server/display/AutomaticBrightnessController;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->removeAllSubOffsetPointsLocked()V

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->addToListAfterBoundaryCheckLocked(FIF)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->removeAllReverseUserOffsetPointsLocked(I)V

    invoke-direct {p0, v0}, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->refreshFixedOffsetPointsLocked(I)V

    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->addSubOffsetPointsIfNeededLocked()V

    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->printOffsetList()V

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_3
    const/16 v3, 0xff

    if-le p2, v3, :cond_2

    const/16 p2, 0xff

    goto :goto_1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->getStringForOffsetList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v1, "[PAB] Private Auto Brightness:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PAB] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getOffset(F)F
    .locals 12

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mLockPAB:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/display/AutomaticBrightnessController;->access$000(Lcom/android/server/display/AutomaticBrightnessController;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    const/4 v6, 0x0

    cmpg-float v6, p1, v6

    if-gtz v6, :cond_0

    :try_start_0
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v1, v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    monitor-exit v7

    :goto_0
    return v1

    :cond_0
    const v6, 0x461c4000    # 10000.0f

    cmpl-float v6, p1, v6

    if-ltz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOp10000Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v1, v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->getIndex(F)I

    move-result v0

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v6, v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    cmpl-float v6, v6, p1

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v1, v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    :goto_1
    monitor-exit v7

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v5, v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    add-int/lit8 v8, v0, -0x1

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v4, v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v3, v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    add-int/lit8 v8, v0, -0x1

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v2, v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    cmpl-float v6, v3, v2

    if-eqz v6, :cond_3

    cmpl-float v6, v5, v4

    if-nez v6, :cond_4

    :cond_3
    move v1, v5

    goto :goto_1

    :cond_4
    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->getSlope(FFFF)F

    move-result v6

    float-to-double v8, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->log10(D)D

    move-result-wide v8

    float-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->log10(D)D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v10

    sub-double/2addr v8, v10

    double-to-float v8, v8

    mul-float/2addr v6, v8

    add-float v1, v6, v4

    goto :goto_1
.end method

.method public getPrivateAutoBrightnessHighHysteresis(F)F
    .locals 2

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;
    invoke-static {v1}, Lcom/android/server/display/AutomaticBrightnessController;->access$2800(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getDynamicAutoBrightnessHighHysteresis(F)F

    move-result v0

    return v0
.end method

.method public getPrivateAutoBrightnessLowHysteresis(F)F
    .locals 2

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;
    invoke-static {v1}, Lcom/android/server/display/AutomaticBrightnessController;->access$2800(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getDynamicAutoBrightnessLowHysteresis(F)F

    move-result v0

    return v0
.end method

.method public getPrivateScreenAutoBrightness(F)F
    .locals 9

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mLockPAB:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$000(Lcom/android/server/display/AutomaticBrightnessController;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    const/4 v5, 0x0

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_0

    :try_start_0
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v5, v5, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v7, v7, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    add-float v4, v5, v7

    monitor-exit v6

    :goto_0
    return v4

    :cond_0
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->getIndex(F)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v5, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    add-float v4, v5, v7

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;
    invoke-static {v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$2800(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getDynamicAutoBrightnessValue(F)F

    move-result v2

    invoke-virtual {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->getOffset(F)F

    move-result v1

    add-float v0, v2, v1

    cmpl-float v5, v4, v0

    if-lez v5, :cond_1

    const-string v5, "AutomaticBrightnessController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[PAB] [CHECK POINT] : prevValue > currentValue -> lux = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_1
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v0

    goto :goto_0
.end method

.method public resetPrivateAutoBrightness()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mLockPAB:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$000(Lcom/android/server/display/AutomaticBrightnessController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController$PrivateAutoBrightness;->init()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
