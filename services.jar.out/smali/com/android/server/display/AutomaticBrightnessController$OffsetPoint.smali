.class Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OffsetPoint"
.end annotation


# instance fields
.field private final BOUNDARY_RATIO:F

.field public mHighBoundary:F

.field public mLowBoundary:F

.field public mLux:F

.field public mOffset:F

.field public final mOffsetType:I

.field public final mOrgCd:F

.field final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;FFI)V
    .locals 2

    const/high16 v1, 0x40200000    # 2.5f

    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->BOUNDARY_RATIO:F

    iput p2, p0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    iput p3, p0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    div-float v0, p2, v1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLowBoundary:F

    mul-float v0, p2, v1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mHighBoundary:F

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;
    invoke-static {p1}, Lcom/android/server/display/AutomaticBrightnessController;->access$2800(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getDynamicAutoBrightnessValue(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    iput p4, p0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffsetType:I

    return-void
.end method
