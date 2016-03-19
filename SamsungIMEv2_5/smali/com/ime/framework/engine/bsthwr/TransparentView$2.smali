.class Lcom/ime/framework/engine/bsthwr/TransparentView$2;
.super Ljava/lang/Object;
.source "TransparentView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/engine/bsthwr/TransparentView;->fadingAllStrokes(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/engine/bsthwr/TransparentView;

.field final synthetic val$list:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/ime/framework/engine/bsthwr/TransparentView;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView$2;->this$0:Lcom/ime/framework/engine/bsthwr/TransparentView;

    iput-object p2, p0, Lcom/ime/framework/engine/bsthwr/TransparentView$2;->val$list:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/16 v4, 0x12

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView$2;->this$0:Lcom/ime/framework/engine/bsthwr/TransparentView;

    iget-boolean v1, v1, Lcom/ime/framework/engine/bsthwr/TransparentView;->ismove:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView$2;->this$0:Lcom/ime/framework/engine/bsthwr/TransparentView;

    iget-boolean v1, v1, Lcom/ime/framework/engine/bsthwr/TransparentView;->bMoreFading:Z

    if-eqz v1, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView$2;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView$2;->this$0:Lcom/ime/framework/engine/bsthwr/TransparentView;

    # getter for: Lcom/ime/framework/engine/bsthwr/TransparentView;->mBeautifyPathList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/ime/framework/engine/bsthwr/TransparentView;->access$000(Lcom/ime/framework/engine/bsthwr/TransparentView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView$2;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ime/framework/engine/bsthwr/TransparentView$PathWithAlpha_t;

    iget v2, v1, Lcom/ime/framework/engine/bsthwr/TransparentView$PathWithAlpha_t;->Alpha:I

    add-int/lit8 v2, v2, -0x1e

    iput v2, v1, Lcom/ime/framework/engine/bsthwr/TransparentView$PathWithAlpha_t;->Alpha:I

    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView$2;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ime/framework/engine/bsthwr/TransparentView$PathWithAlpha_t;

    iget v1, v1, Lcom/ime/framework/engine/bsthwr/TransparentView$PathWithAlpha_t;->Alpha:I

    if-ge v1, v4, :cond_1

    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView$2;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ime/framework/engine/bsthwr/TransparentView$PathWithAlpha_t;

    iput v4, v1, Lcom/ime/framework/engine/bsthwr/TransparentView$PathWithAlpha_t;->Alpha:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView$2;->this$0:Lcom/ime/framework/engine/bsthwr/TransparentView;

    invoke-virtual {v1}, Lcom/ime/framework/engine/bsthwr/TransparentView;->invalidate()V

    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView$2;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ime/framework/engine/bsthwr/TransparentView$PathWithAlpha_t;

    iget v1, v1, Lcom/ime/framework/engine/bsthwr/TransparentView$PathWithAlpha_t;->Alpha:I

    const/16 v2, 0x1e

    if-le v1, v2, :cond_4

    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView$2;->this$0:Lcom/ime/framework/engine/bsthwr/TransparentView;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/ime/framework/engine/bsthwr/TransparentView;->bMoreFading:Z

    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView$2;->this$0:Lcom/ime/framework/engine/bsthwr/TransparentView;

    # getter for: Lcom/ime/framework/engine/bsthwr/TransparentView;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/ime/framework/engine/bsthwr/TransparentView;->access$100(Lcom/ime/framework/engine/bsthwr/TransparentView;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x28

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/TransparentView$2;->this$0:Lcom/ime/framework/engine/bsthwr/TransparentView;

    iput-boolean v3, v1, Lcom/ime/framework/engine/bsthwr/TransparentView;->bMoreFading:Z

    goto :goto_1
.end method
