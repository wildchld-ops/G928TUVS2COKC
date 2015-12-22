.class Lcom/sec/android/app/launcher/views/WidgetSearchView$2;
.super Ljava/lang/Object;
.source "WidgetSearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/views/WidgetSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/views/WidgetSearchView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/views/WidgetSearchView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/WidgetSearchView$2;->this$0:Lcom/sec/android/app/launcher/views/WidgetSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetSearchView$2;->this$0:Lcom/sec/android/app/launcher/views/WidgetSearchView;

    # invokes: Landroid/view/View;->isEnabled()Z
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/WidgetSearchView;->access$201(Lcom/sec/android/app/launcher/views/WidgetSearchView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetSearchView$2;->this$0:Lcom/sec/android/app/launcher/views/WidgetSearchView;

    # getter for: Lcom/sec/android/app/launcher/views/WidgetSearchView;->mClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/WidgetSearchView;->access$300(Lcom/sec/android/app/launcher/views/WidgetSearchView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetSearchView$2;->this$0:Lcom/sec/android/app/launcher/views/WidgetSearchView;

    # getter for: Lcom/sec/android/app/launcher/views/WidgetSearchView;->mClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/WidgetSearchView;->access$300(Lcom/sec/android/app/launcher/views/WidgetSearchView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetSearchView$2;->this$0:Lcom/sec/android/app/launcher/views/WidgetSearchView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/WidgetSearchView;->showKeyboard()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetSearchView$2;->this$0:Lcom/sec/android/app/launcher/views/WidgetSearchView;

    # getter for: Lcom/sec/android/app/launcher/views/WidgetSearchView;->mClearButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/WidgetSearchView;->access$400(Lcom/sec/android/app/launcher/views/WidgetSearchView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetSearchView$2;->this$0:Lcom/sec/android/app/launcher/views/WidgetSearchView;

    const-string v1, ""

    const/4 v2, 0x1

    # invokes: Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/launcher/views/WidgetSearchView;->access$501(Lcom/sec/android/app/launcher/views/WidgetSearchView;Ljava/lang/CharSequence;Z)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetSearchView$2;->this$0:Lcom/sec/android/app/launcher/views/WidgetSearchView;

    # invokes: Landroid/view/View;->requestFocus()Z
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/WidgetSearchView;->access$601(Lcom/sec/android/app/launcher/views/WidgetSearchView;)Z

    goto :goto_0
.end method
