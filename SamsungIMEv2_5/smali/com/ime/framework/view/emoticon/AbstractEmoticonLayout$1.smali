.class Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$1;
.super Ljava/lang/Object;
.source "AbstractEmoticonLayout.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;


# direct methods
.method constructor <init>(Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$1;->this$0:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    iget-object v2, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$1;->this$0:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    iget-object v2, v2, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v3, "EMOTICON_CURRENT_CATEGORY"

    invoke-interface {v2, v3, p1}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$1;->this$0:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    iget-object v2, v2, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mCategoryTabIds:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$1;->this$0:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    iget-object v3, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$1;->this$0:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    iget-object v3, v3, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mCategoryTabIds:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-ne v0, p1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v2, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$1;->this$0:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    iput p1, v2, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mCurrentPosition:I

    iget-object v2, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$1;->this$0:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    invoke-virtual {v2, v1}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->setEmoticonPageIndicator(Landroid/view/View;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_1

    :cond_1
    return-void
.end method
