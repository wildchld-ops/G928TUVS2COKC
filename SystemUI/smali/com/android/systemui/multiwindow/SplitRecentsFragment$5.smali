.class Lcom/android/systemui/multiwindow/SplitRecentsFragment$5;
.super Ljava/lang/Object;
.source "SplitRecentsFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/multiwindow/SplitRecentsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/SplitRecentsFragment;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/SplitRecentsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment$5;->this$0:Lcom/android/systemui/multiwindow/SplitRecentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment$5;->this$0:Lcom/android/systemui/multiwindow/SplitRecentsFragment;

    invoke-virtual {v0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->onBackPressed()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
