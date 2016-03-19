.class Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$2;
.super Ljava/lang/Object;
.source "AbstractEmoticonLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$2;->this$0:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$2;->this$0:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    # getter for: Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mViewPager:Lcom/ime/framework/view/emoticon/CustomViewPager;
    invoke-static {v0}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->access$000(Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;)Lcom/ime/framework/view/emoticon/CustomViewPager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/emoticon/CustomViewPager;->setCurrentItem(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$2;->this$0:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    # getter for: Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mViewPager:Lcom/ime/framework/view/emoticon/CustomViewPager;
    invoke-static {v0}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->access$000(Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;)Lcom/ime/framework/view/emoticon/CustomViewPager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/emoticon/CustomViewPager;->setCurrentItem(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$2;->this$0:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    # getter for: Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mViewPager:Lcom/ime/framework/view/emoticon/CustomViewPager;
    invoke-static {v0}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->access$000(Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;)Lcom/ime/framework/view/emoticon/CustomViewPager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/emoticon/CustomViewPager;->setCurrentItem(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$2;->this$0:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    # getter for: Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mViewPager:Lcom/ime/framework/view/emoticon/CustomViewPager;
    invoke-static {v0}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->access$000(Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;)Lcom/ime/framework/view/emoticon/CustomViewPager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/emoticon/CustomViewPager;->setCurrentItem(I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$2;->this$0:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    # getter for: Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mViewPager:Lcom/ime/framework/view/emoticon/CustomViewPager;
    invoke-static {v0}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->access$000(Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;)Lcom/ime/framework/view/emoticon/CustomViewPager;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/emoticon/CustomViewPager;->setCurrentItem(I)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$2;->this$0:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    # getter for: Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mViewPager:Lcom/ime/framework/view/emoticon/CustomViewPager;
    invoke-static {v0}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->access$000(Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;)Lcom/ime/framework/view/emoticon/CustomViewPager;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/emoticon/CustomViewPager;->setCurrentItem(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f100049
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
