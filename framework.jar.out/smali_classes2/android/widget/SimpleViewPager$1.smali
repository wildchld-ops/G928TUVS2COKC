.class final Landroid/widget/SimpleViewPager$1;
.super Ljava/lang/Object;
.source "SimpleViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SimpleViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/widget/SimpleViewPager$ItemInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/widget/SimpleViewPager$ItemInfo;Landroid/widget/SimpleViewPager$ItemInfo;)I
    .locals 2

    iget v0, p1, Landroid/widget/SimpleViewPager$ItemInfo;->position:I

    iget v1, p2, Landroid/widget/SimpleViewPager$ItemInfo;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/widget/SimpleViewPager$ItemInfo;

    check-cast p2, Landroid/widget/SimpleViewPager$ItemInfo;

    invoke-virtual {p0, p1, p2}, Landroid/widget/SimpleViewPager$1;->compare(Landroid/widget/SimpleViewPager$ItemInfo;Landroid/widget/SimpleViewPager$ItemInfo;)I

    move-result v0

    return v0
.end method
