.class Lcom/ime/framework/view/chinesespell/AbstractSpellView$1;
.super Landroid/os/Handler;
.source "AbstractSpellView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/view/chinesespell/AbstractSpellView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/view/chinesespell/AbstractSpellView;


# direct methods
.method constructor <init>(Lcom/ime/framework/view/chinesespell/AbstractSpellView;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView$1;->this$0:Lcom/ime/framework/view/chinesespell/AbstractSpellView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView$1;->this$0:Lcom/ime/framework/view/chinesespell/AbstractSpellView;

    # getter for: Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mCount:I
    invoke-static {v0}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->access$000(Lcom/ime/framework/view/chinesespell/AbstractSpellView;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView$1;->this$0:Lcom/ime/framework/view/chinesespell/AbstractSpellView;

    # operator++ for: Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mCount:I
    invoke-static {v0}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->access$008(Lcom/ime/framework/view/chinesespell/AbstractSpellView;)I

    iget-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView$1;->this$0:Lcom/ime/framework/view/chinesespell/AbstractSpellView;

    # getter for: Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mCount:I
    invoke-static {v0}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->access$000(Lcom/ime/framework/view/chinesespell/AbstractSpellView;)I

    move-result v0

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView$1;->this$0:Lcom/ime/framework/view/chinesespell/AbstractSpellView;

    const/4 v1, 0x0

    # setter for: Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mCount:I
    invoke-static {v0, v1}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->access$002(Lcom/ime/framework/view/chinesespell/AbstractSpellView;I)I

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView$1;->this$0:Lcom/ime/framework/view/chinesespell/AbstractSpellView;

    invoke-virtual {v0}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->invalidate()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView$1;->this$0:Lcom/ime/framework/view/chinesespell/AbstractSpellView;

    iget-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView$1;->this$0:Lcom/ime/framework/view/chinesespell/AbstractSpellView;

    invoke-virtual {v1}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202f2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    # setter for: Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mCloudIdleDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->access$102(Lcom/ime/framework/view/chinesespell/AbstractSpellView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView$1;->this$0:Lcom/ime/framework/view/chinesespell/AbstractSpellView;

    iget-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView$1;->this$0:Lcom/ime/framework/view/chinesespell/AbstractSpellView;

    invoke-virtual {v1}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202f1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    # setter for: Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mCloudIdleDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->access$102(Lcom/ime/framework/view/chinesespell/AbstractSpellView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView$1;->this$0:Lcom/ime/framework/view/chinesespell/AbstractSpellView;

    iget-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView$1;->this$0:Lcom/ime/framework/view/chinesespell/AbstractSpellView;

    invoke-virtual {v1}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202f0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    # setter for: Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mCloudIdleDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->access$102(Lcom/ime/framework/view/chinesespell/AbstractSpellView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView$1;->this$0:Lcom/ime/framework/view/chinesespell/AbstractSpellView;

    iget-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView$1;->this$0:Lcom/ime/framework/view/chinesespell/AbstractSpellView;

    invoke-virtual {v1}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202ef

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    # setter for: Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mCloudIdleDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->access$102(Lcom/ime/framework/view/chinesespell/AbstractSpellView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView$1;->this$0:Lcom/ime/framework/view/chinesespell/AbstractSpellView;

    iget-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellView$1;->this$0:Lcom/ime/framework/view/chinesespell/AbstractSpellView;

    invoke-virtual {v1}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    # setter for: Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mCloudIdleDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->access$102(Lcom/ime/framework/view/chinesespell/AbstractSpellView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
