.class Landroid/widget/SimpleViewPager$3;
.super Ljava/lang/Object;
.source "SimpleViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SimpleViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SimpleViewPager;


# direct methods
.method constructor <init>(Landroid/widget/SimpleViewPager;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SimpleViewPager$3;->this$0:Landroid/widget/SimpleViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/widget/SimpleViewPager$3;->this$0:Landroid/widget/SimpleViewPager;

    const/4 v1, 0x0

    # invokes: Landroid/widget/SimpleViewPager;->setScrollState(I)V
    invoke-static {v0, v1}, Landroid/widget/SimpleViewPager;->access$000(Landroid/widget/SimpleViewPager;I)V

    iget-object v0, p0, Landroid/widget/SimpleViewPager$3;->this$0:Landroid/widget/SimpleViewPager;

    invoke-virtual {v0}, Landroid/widget/SimpleViewPager;->populate()V

    return-void
.end method
