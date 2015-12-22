.class Lcom/sec/android/app/launcher/views/WidgetSearchView$1;
.super Ljava/lang/Object;
.source "WidgetSearchView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/WidgetSearchView$1;->this$0:Lcom/sec/android/app/launcher/views/WidgetSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetSearchView$1;->this$0:Lcom/sec/android/app/launcher/views/WidgetSearchView;

    const/4 v1, 0x0

    # invokes: Landroid/widget/SearchView;->setIconified(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/views/WidgetSearchView;->access$001(Lcom/sec/android/app/launcher/views/WidgetSearchView;Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetSearchView$1;->this$0:Lcom/sec/android/app/launcher/views/WidgetSearchView;

    # invokes: Landroid/view/View;->requestFocus()Z
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/WidgetSearchView;->access$101(Lcom/sec/android/app/launcher/views/WidgetSearchView;)Z

    :cond_0
    return-void
.end method
