.class Landroid/widget/SimpleViewPager$PagerObserver;
.super Landroid/database/DataSetObserver;
.source "SimpleViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SimpleViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SimpleViewPager;


# direct methods
.method private constructor <init>(Landroid/widget/SimpleViewPager;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SimpleViewPager$PagerObserver;->this$0:Landroid/widget/SimpleViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/SimpleViewPager;Landroid/widget/SimpleViewPager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SimpleViewPager$PagerObserver;-><init>(Landroid/widget/SimpleViewPager;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Landroid/widget/SimpleViewPager$PagerObserver;->this$0:Landroid/widget/SimpleViewPager;

    invoke-virtual {v0}, Landroid/widget/SimpleViewPager;->dataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    iget-object v0, p0, Landroid/widget/SimpleViewPager$PagerObserver;->this$0:Landroid/widget/SimpleViewPager;

    invoke-virtual {v0}, Landroid/widget/SimpleViewPager;->dataSetChanged()V

    return-void
.end method
