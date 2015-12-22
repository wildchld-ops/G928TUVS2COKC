.class Landroid/widget/Editor$PositionListener$1;
.super Landroid/os/Handler;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$PositionListener;->prepareHander()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$PositionListener;


# direct methods
.method constructor <init>(Landroid/widget/Editor$PositionListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor$PositionListener$1;->this$1:Landroid/widget/Editor$PositionListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/widget/Editor$TextViewPositionListener;

    iget-object v0, p0, Landroid/widget/Editor$PositionListener$1;->this$1:Landroid/widget/Editor$PositionListener;

    iget-object v2, p0, Landroid/widget/Editor$PositionListener$1;->this$1:Landroid/widget/Editor$PositionListener;

    # getter for: Landroid/widget/Editor$PositionListener;->mPositionX:I
    invoke-static {v2}, Landroid/widget/Editor$PositionListener;->access$1700(Landroid/widget/Editor$PositionListener;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/Editor$PositionListener$1;->this$1:Landroid/widget/Editor$PositionListener;

    # getter for: Landroid/widget/Editor$PositionListener;->mPositionY:I
    invoke-static {v3}, Landroid/widget/Editor$PositionListener;->access$1800(Landroid/widget/Editor$PositionListener;)I

    move-result v3

    iget-object v4, p0, Landroid/widget/Editor$PositionListener$1;->this$1:Landroid/widget/Editor$PositionListener;

    # getter for: Landroid/widget/Editor$PositionListener;->mPositionHasChanged:Z
    invoke-static {v4}, Landroid/widget/Editor$PositionListener;->access$1900(Landroid/widget/Editor$PositionListener;)Z

    move-result v4

    iget-object v5, p0, Landroid/widget/Editor$PositionListener$1;->this$1:Landroid/widget/Editor$PositionListener;

    # getter for: Landroid/widget/Editor$PositionListener;->mScrollHasChanged:Z
    invoke-static {v5}, Landroid/widget/Editor$PositionListener;->access$2000(Landroid/widget/Editor$PositionListener;)Z

    move-result v5

    # invokes: Landroid/widget/Editor$PositionListener;->updatePositionWithDelay(Landroid/widget/Editor$TextViewPositionListener;IIZZ)V
    invoke-static/range {v0 .. v5}, Landroid/widget/Editor$PositionListener;->access$2100(Landroid/widget/Editor$PositionListener;Landroid/widget/Editor$TextViewPositionListener;IIZZ)V

    return-void
.end method
