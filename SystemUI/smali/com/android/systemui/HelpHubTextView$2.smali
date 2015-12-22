.class Lcom/android/systemui/HelpHubTextView$2;
.super Ljava/lang/Object;
.source "HelpHubTextView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/HelpHubTextView;->invalidateDrawables()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/HelpHubTextView;


# direct methods
.method constructor <init>(Lcom/android/systemui/HelpHubTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/HelpHubTextView$2;->this$0:Lcom/android/systemui/HelpHubTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 10

    const v9, 0xfffc

    const/4 v2, 0x0

    :goto_0
    iget-object v7, p0, Lcom/android/systemui/HelpHubTextView$2;->this$0:Lcom/android/systemui/HelpHubTextView;

    # getter for: Lcom/android/systemui/HelpHubTextView;->mDrawables:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/systemui/HelpHubTextView;->access$100(Lcom/android/systemui/HelpHubTextView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_3

    iget-object v8, p0, Lcom/android/systemui/HelpHubTextView$2;->this$0:Lcom/android/systemui/HelpHubTextView;

    iget-object v7, p0, Lcom/android/systemui/HelpHubTextView$2;->this$0:Lcom/android/systemui/HelpHubTextView;

    # getter for: Lcom/android/systemui/HelpHubTextView;->mDrawables:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/systemui/HelpHubTextView;->access$100(Lcom/android/systemui/HelpHubTextView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/HelpHubDrawable;

    iput-object v7, v8, Lcom/android/systemui/HelpHubTextView;->currentDrawable:Lcom/android/systemui/HelpHubDrawable;

    iget-object v7, p0, Lcom/android/systemui/HelpHubTextView$2;->this$0:Lcom/android/systemui/HelpHubTextView;

    invoke-virtual {v7}, Lcom/android/systemui/HelpHubTextView;->getLineCount()I

    move-result v4

    const/4 v7, 0x1

    if-lt v4, v7, :cond_2

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_2

    iget-object v7, p0, Lcom/android/systemui/HelpHubTextView$2;->this$0:Lcom/android/systemui/HelpHubTextView;

    invoke-virtual {v7}, Lcom/android/systemui/HelpHubTextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v1

    iget-object v7, p0, Lcom/android/systemui/HelpHubTextView$2;->this$0:Lcom/android/systemui/HelpHubTextView;

    invoke-virtual {v7}, Lcom/android/systemui/HelpHubTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v9}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-eq v0, v2, :cond_0

    invoke-static {v5, v9}, Lcom/android/systemui/HelpHubTextView;->countOccurrences(Ljava/lang/String;C)I

    move-result v7

    const/4 v8, 0x2

    if-ge v7, v8, :cond_0

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget-object v7, p0, Lcom/android/systemui/HelpHubTextView$2;->this$0:Lcom/android/systemui/HelpHubTextView;

    iget-object v7, v7, Lcom/android/systemui/HelpHubTextView;->currentDrawable:Lcom/android/systemui/HelpHubDrawable;

    iget-object v8, p0, Lcom/android/systemui/HelpHubTextView$2;->this$0:Lcom/android/systemui/HelpHubTextView;

    # getter for: Lcom/android/systemui/HelpHubTextView;->mInnerBitmapYDiff:I
    invoke-static {v8}, Lcom/android/systemui/HelpHubTextView;->access$300(Lcom/android/systemui/HelpHubTextView;)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Lcom/android/systemui/HelpHubDrawable;->setBitmapY(F)V

    :cond_1
    move v6, v1

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
