.class Lcom/ime/framework/view/candidate/AbstractCandidateLayout$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "AbstractCandidateLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->initGestureDetector()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;


# direct methods
.method constructor <init>(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$3;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$3;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    # setter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->misLeftScrolled:Z
    invoke-static {v0, v1}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$1602(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;Z)Z

    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$3;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    # setter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->misRightScrolled:Z
    invoke-static {v0, v1}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$1702(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;Z)Z

    goto :goto_0
.end method
