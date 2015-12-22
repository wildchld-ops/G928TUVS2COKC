.class Lcom/android/server/wm/WindowManagerService$WallpaperInnerState;
.super Ljava/lang/Object;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperInnerState"
.end annotation


# instance fields
.field mAnimateWallpaperWithTarget:Z

.field mLastWallpaperDisplayOffsetX:I

.field mLastWallpaperDisplayOffsetY:I

.field mLastWallpaperTimeoutTime:J

.field mLastWallpaperX:F

.field mLastWallpaperXStep:F

.field mLastWallpaperY:F

.field mLastWallpaperYStep:F

.field mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

.field mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

.field mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

.field mWallpaperAnimLayerAdjustment:I

.field mWallpaperTarget:Lcom/android/server/wm/WindowState;

.field final mWallpaperTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 4

    const/high16 v3, -0x80000000

    const/4 v2, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$WallpaperInnerState;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService$WallpaperInnerState;->mWallpaperTokens:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService$WallpaperInnerState;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService$WallpaperInnerState;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService$WallpaperInnerState;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    iput v1, p0, Lcom/android/server/wm/WindowManagerService$WallpaperInnerState;->mLastWallpaperX:F

    iput v1, p0, Lcom/android/server/wm/WindowManagerService$WallpaperInnerState;->mLastWallpaperY:F

    iput v1, p0, Lcom/android/server/wm/WindowManagerService$WallpaperInnerState;->mLastWallpaperXStep:F

    iput v1, p0, Lcom/android/server/wm/WindowManagerService$WallpaperInnerState;->mLastWallpaperYStep:F

    iput v3, p0, Lcom/android/server/wm/WindowManagerService$WallpaperInnerState;->mLastWallpaperDisplayOffsetX:I

    iput v3, p0, Lcom/android/server/wm/WindowManagerService$WallpaperInnerState;->mLastWallpaperDisplayOffsetY:I

    return-void
.end method
