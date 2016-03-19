.class public Lcom/dragon/android/voiceime/ui/sandglass/PathInfo;
.super Ljava/lang/Object;
.source "PathInfo.java"


# instance fields
.field public final ID:I

.field public final PAINT:Landroid/graphics/Paint;

.field public final PATH:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dragon/android/voiceime/ui/sandglass/PathInfo;->PATH:Landroid/graphics/Path;

    iput-object p2, p0, Lcom/dragon/android/voiceime/ui/sandglass/PathInfo;->PAINT:Landroid/graphics/Paint;

    iput p3, p0, Lcom/dragon/android/voiceime/ui/sandglass/PathInfo;->ID:I

    return-void
.end method
