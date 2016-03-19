.class public Lcom/ime/framework/engine/bsthwr/TransparentView$PathWithAlpha_t;
.super Ljava/lang/Object;
.source "TransparentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/engine/bsthwr/TransparentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "PathWithAlpha_t"
.end annotation


# instance fields
.field public Alpha:I

.field public path:Landroid/graphics/Path;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    iput v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView$PathWithAlpha_t;->Alpha:I

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView$PathWithAlpha_t;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    const/16 v0, 0xff

    iput v0, p0, Lcom/ime/framework/engine/bsthwr/TransparentView$PathWithAlpha_t;->Alpha:I

    return-void
.end method
