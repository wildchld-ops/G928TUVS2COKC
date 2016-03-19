.class Lcom/ime/framework/view/candidate/AbstractCandidateLayout$2;
.super Ljava/lang/Object;
.source "AbstractCandidateLayout.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->getHoverListener()Landroid/view/View$OnHoverListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field inputMethod:I

.field final synthetic this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;


# direct methods
.method constructor <init>(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)V
    .locals 1

    iput-object p1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$2;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v0

    iput v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$2;->inputMethod:I

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, -0x1

    iget v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$2;->inputMethod:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    const v0, 0x7f02004b

    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_1
    const/4 v1, 0x0

    return v1

    :cond_0
    const v0, 0x7f02001a

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$2;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    invoke-virtual {v1}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->getBackgroundResourceId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
