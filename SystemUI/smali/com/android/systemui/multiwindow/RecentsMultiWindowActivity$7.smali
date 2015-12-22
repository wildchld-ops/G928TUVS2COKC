.class Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$7;
.super Ljava/lang/Object;
.source "RecentsMultiWindowActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->initViewPageMark()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$7;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$7;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$7;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerMark:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$300(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->moveViewPage(IZ)V

    return v2
.end method
