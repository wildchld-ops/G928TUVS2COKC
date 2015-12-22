.class Lcom/android/server/am/MultiWindowPolicy$ZoneRects;
.super Ljava/lang/Object;
.source "MultiWindowPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MultiWindowPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoneRects"
.end annotation


# instance fields
.field A:Landroid/graphics/Rect;

.field B:Landroid/graphics/Rect;

.field C:Landroid/graphics/Rect;

.field D:Landroid/graphics/Rect;

.field E:Landroid/graphics/Rect;

.field F:Landroid/graphics/Rect;

.field FULL:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/android/server/am/MultiWindowPolicy;


# direct methods
.method private constructor <init>(Lcom/android/server/am/MultiWindowPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/MultiWindowPolicy;Lcom/android/server/am/MultiWindowPolicy$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;-><init>(Lcom/android/server/am/MultiWindowPolicy;)V

    return-void
.end method
