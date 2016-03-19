.class Lcom/ime/framework/view/toolbar/ToolbarEditAdapter$2;
.super Ljava/lang/Object;
.source "ToolbarEditAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;->getOnCheckedChangeListener()Landroid/widget/CompoundButton$OnCheckedChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;


# direct methods
.method constructor <init>(Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/toolbar/ToolbarEditAdapter$2;->this$0:Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/ime/framework/view/toolbar/ToolbarEditAdapter$2;->this$0:Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;

    # getter for: Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;->mShowingItems:Ljava/util/Vector;
    invoke-static {v3}, Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;->access$100(Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez p2, :cond_2

    iget-object v3, p0, Lcom/ime/framework/view/toolbar/ToolbarEditAdapter$2;->this$0:Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;

    # getter for: Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;->mUnCheckedItems:Ljava/util/Vector;
    invoke-static {v3}, Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;->access$200(Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;)Ljava/util/Vector;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/ime/framework/view/toolbar/ToolbarEditAdapter$2;->this$0:Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;

    # getter for: Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;->mUnCheckedItems:Ljava/util/Vector;
    invoke-static {v3}, Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;->access$200(Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;)Ljava/util/Vector;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/ime/framework/view/toolbar/ToolbarEditAdapter$2;->this$0:Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;

    # getter for: Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;->mToolbarMgr:Lcom/ime/framework/view/toolbar/ToolBarManager;
    invoke-static {v3}, Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;->access$300(Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;)Lcom/ime/framework/view/toolbar/ToolBarManager;

    move-result-object v3

    invoke-virtual {v3, v1, p2}, Lcom/ime/framework/view/toolbar/ToolBarManager;->setCheckedStatusValue(IZ)V

    :cond_1
    return-void

    :cond_2
    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/ime/framework/view/toolbar/ToolbarEditAdapter$2;->this$0:Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;

    # getter for: Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;->mUnCheckedItems:Ljava/util/Vector;
    invoke-static {v3}, Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;->access$200(Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;)Ljava/util/Vector;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ime/framework/view/toolbar/ToolbarEditAdapter$2;->this$0:Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;

    # getter for: Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;->mUnCheckedItems:Ljava/util/Vector;
    invoke-static {v3}, Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;->access$200(Lcom/ime/framework/view/toolbar/ToolbarEditAdapter;)Ljava/util/Vector;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    goto :goto_0
.end method
