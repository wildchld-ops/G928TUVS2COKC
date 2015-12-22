.class Lcom/android/settings/HighlightingFragment$1;
.super Ljava/lang/Object;
.source "HighlightingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/HighlightingFragment;->highlightView(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/HighlightingFragment;

.field final synthetic val$highlight:Landroid/graphics/drawable/Drawable;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/HighlightingFragment;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/HighlightingFragment$1;->this$0:Lcom/android/settings/HighlightingFragment;

    iput-object p2, p0, Lcom/android/settings/HighlightingFragment$1;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/android/settings/HighlightingFragment$1;->val$highlight:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v2, p0, Lcom/android/settings/HighlightingFragment$1;->val$view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    iget-object v2, p0, Lcom/android/settings/HighlightingFragment$1;->val$view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    iget-object v2, p0, Lcom/android/settings/HighlightingFragment$1;->val$highlight:Landroid/graphics/drawable/Drawable;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    iget-object v2, p0, Lcom/android/settings/HighlightingFragment$1;->val$view:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    iget-object v2, p0, Lcom/android/settings/HighlightingFragment$1;->val$view:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    return-void
.end method
