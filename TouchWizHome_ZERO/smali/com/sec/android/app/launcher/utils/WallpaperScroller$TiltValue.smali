.class public Lcom/sec/android/app/launcher/utils/WallpaperScroller$TiltValue;
.super Ljava/lang/Object;
.source "WallpaperScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/utils/WallpaperScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TiltValue"
.end annotation


# instance fields
.field mX:F

.field mY:F

.field tilt_x_range:F

.field tilt_y_range:F

.field wallpaper_x_range:F

.field wallpaper_y_range:F


# direct methods
.method public constructor <init>(FFFFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$TiltValue;->mX:F

    iput p2, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$TiltValue;->mY:F

    iput p3, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$TiltValue;->tilt_x_range:F

    iput p4, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$TiltValue;->tilt_y_range:F

    iput p5, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$TiltValue;->wallpaper_x_range:F

    iput p6, p0, Lcom/sec/android/app/launcher/utils/WallpaperScroller$TiltValue;->wallpaper_y_range:F

    return-void
.end method
