.class Lcom/sec/android/app/launcher/views/WidgetListItemView$1;
.super Lcom/sec/daliviews/uiAnimations/IUIAnimationPlayerListener;
.source "WidgetListItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/views/WidgetListItemView;->clickAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/views/WidgetListItemView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/views/WidgetListItemView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView$1;->this$0:Lcom/sec/android/app/launcher/views/WidgetListItemView;

    invoke-direct {p0}, Lcom/sec/daliviews/uiAnimations/IUIAnimationPlayerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public handleUIAnimEvent(I)V
    .locals 2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView$1;->this$0:Lcom/sec/android/app/launcher/views/WidgetListItemView;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/launcher/views/WidgetListItemView;->mIsJumping:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/views/WidgetListItemView;->access$002(Lcom/sec/android/app/launcher/views/WidgetListItemView;Z)Z

    :cond_0
    return-void
.end method
