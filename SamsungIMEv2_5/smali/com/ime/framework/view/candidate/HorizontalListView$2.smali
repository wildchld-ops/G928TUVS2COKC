.class Lcom/ime/framework/view/candidate/HorizontalListView$2;
.super Ljava/lang/Object;
.source "HorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/view/candidate/HorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/view/candidate/HorizontalListView;


# direct methods
.method constructor <init>(Lcom/ime/framework/view/candidate/HorizontalListView;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/candidate/HorizontalListView$2;->this$0:Lcom/ime/framework/view/candidate/HorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView$2;->this$0:Lcom/ime/framework/view/candidate/HorizontalListView;

    invoke-virtual {v0}, Lcom/ime/framework/view/candidate/HorizontalListView;->requestLayout()V

    return-void
.end method
